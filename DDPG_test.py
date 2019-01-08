import matplotlib
matplotlib.use('TkAgg')
import tensorflow as tf
import numpy as np
import gym
import time
import matplotlib.pyplot as plt
from cartpole_uncertainty import CartPoleEnv_adv

#####################  hyper parameters  ####################

MAX_EPISODES = 50000
MAX_EP_STEPS =2500
LR_A = 0.001    # learning rate for actor
LR_C = 0.0025    # learning rate for critic
GAMMA = 0.99    # reward discount
TAU = 0.01  # soft replacement
MEMORY_CAPACITY = 50000
BATCH_SIZE = 256

RENDER = True

# ENV_NAME = 'CartPole-v2'
env = CartPoleEnv_adv()
# env = gym.make(ENV_NAME)
env = env.unwrapped

EWMA_p=0.95
EWMA_step=np.zeros((1,MAX_EPISODES+1))
EWMA_reward=np.zeros((1,MAX_EPISODES+1))
iteration=np.zeros((1,MAX_EPISODES+1))

###############################  DDPG  ####################################

class DDPG(object):
    def __init__(self, a_dim, s_dim, a_bound,):
        self.memory = np.zeros((MEMORY_CAPACITY, s_dim * 2 + a_dim + 1), dtype=np.float32)
        self.pointer = 0
        self.sess = tf.Session()

        self.a_dim, self.s_dim, self.a_bound = a_dim, s_dim, a_bound,
        self.S = tf.placeholder(tf.float32, [None, s_dim], 's')
        self.S_ = tf.placeholder(tf.float32, [None, s_dim], 's_')
        self.R = tf.placeholder(tf.float32, [None, 1], 'r')
        self.LR_A= tf.placeholder(tf.float32, None, 'LR_A')
        self.LR_C = tf.placeholder(tf.float32, None, 'LR_C')

        self.a = self._build_a(self.S,)# 这个网络用于及时更新参数
        q = self._build_c(self.S, self.a, )# 这个网络是用于及时更新参数
        a_params = tf.get_collection(tf.GraphKeys.TRAINABLE_VARIABLES, scope='Actor')
        c_params = tf.get_collection(tf.GraphKeys.TRAINABLE_VARIABLES, scope='Critic')
        ema = tf.train.ExponentialMovingAverage(decay=1 - TAU)          # soft replacement

        def ema_getter(getter, name, *args, **kwargs):
            return ema.average(getter(name, *args, **kwargs))

        target_update = [ema.apply(a_params), ema.apply(c_params)]      # soft update operation
        # 这个网络不及时更新参数, 用于预测 Critic 的 Q_target 中的 action
        a_ = self._build_a(self.S_, reuse=True, custom_getter=ema_getter)   # replaced target parameters
        # 这个网络不及时更新参数, 用于给出 Actor 更新参数时的 Gradient ascent 强度
        q_ = self._build_c(self.S_, a_, reuse=True, custom_getter=ema_getter)

        a_loss = - tf.reduce_mean(q)  # maximize the q
        self.atrain = tf.train.AdamOptimizer(self.LR_A).minimize(a_loss, var_list=a_params)#以learning_rate去训练，方向是minimize loss，调整列表参数，用adam

        with tf.control_dependencies(target_update):    # soft replacement happened at here
            q_target = self.R + GAMMA * q_
            td_error = tf.losses.mean_squared_error(labels=q_target, predictions=q)
            self.ctrain = tf.train.AdamOptimizer(self.LR_C).minimize(td_error, var_list=c_params)

        self.sess.run(tf.global_variables_initializer())
        self.saver = tf.train.Saver()
        # self.saver.restore(self.sess, "Model/cartpole_plus_5.ckpt")  # 1 0.1 0.5 0.001
        self.saver.restore(self.sess, "Model/cartpole_normal.ckpt")  # 1 0.1 0.5 0.001no r
    def choose_action(self, s):
        return self.sess.run(self.a, {self.S: s[np.newaxis, :]})[0]

    #action 选择模块也是actor模块
    def _build_a(self, s, reuse=None, custom_getter=None):
        trainable = True if reuse is None else False
        with tf.variable_scope('Actor', reuse=reuse, custom_getter=custom_getter):
            net_0 = tf.layers.dense(s, 128, activation=tf.nn.relu, name='l1', trainable=trainable)#原始是30
            net_1 = tf.layers.dense(net_0, 128, activation=tf.nn.relu, name='l2', trainable=trainable)  # 原始是30
            net_2 = tf.layers.dense(net_1, 64, activation=tf.nn.relu, name='l3', trainable=trainable)  # 原始是30
            a = tf.layers.dense(net_2, self.a_dim, activation=tf.nn.tanh, name='a', trainable=trainable)
            return tf.multiply(a, self.a_bound, name='scaled_a')
    #critic模块
    def _build_c(self, s, a, reuse=None, custom_getter=None):
        trainable = True if reuse is None else False
        with tf.variable_scope('Critic', reuse=reuse, custom_getter=custom_getter):
            n_l1 = 128#30
            w1_s = tf.get_variable('w1_s', [self.s_dim, n_l1], trainable=trainable)
            w1_a = tf.get_variable('w1_a', [self.a_dim, n_l1], trainable=trainable)
            b1 = tf.get_variable('b1', [1, n_l1], trainable=trainable)
            net_0 = tf.nn.relu(tf.matmul(s, w1_s) + tf.matmul(a, w1_a) + b1)
            net_1 = tf.layers.dense(net_0, 128, activation=tf.nn.relu, name='l2', trainable=trainable)  # 原始是30
            net_2 = tf.layers.dense(net_1, 64, activation=tf.nn.relu, name='l3', trainable=trainable)  # 原始是30
            return tf.layers.dense(net_1, 1, trainable=trainable)  # Q(s,a)
###############################  training  ####################################
# env.seed(1)   # 普通的 Policy gradient 方法, 使得回合的 variance 比较大, 所以我们选了一个好点的随机种子

s_dim = env.observation_space.shape[0]
a_dim = env.action_space.shape[0]
a_bound = env.action_space.high

ddpg = DDPG(a_dim, s_dim, a_bound)

var = 5  # control exploration
t1 = time.time()
win=0
winmax=1
max_reward=140000
max_ewma_reward=100000
# LR_A = 0.01    # learning rate for actor
# LR_C = 0.02    # learning rate for critic
for i in range(MAX_EPISODES):
    iteration[0,i+1]=i+1
    s = env.reset()
    ep_reward = 0
    # MAX_EP_STEPS = min(max(500,MAX_EPISODES),1000)
    for j in range(MAX_EP_STEPS):
        if RENDER:
            env.render()

        # Add exploration noise
        a = ddpg.choose_action(np.random.normal(s, 0.05))
        print('choose_action(s)', time.time() - t1)
        a = np.clip(np.random.normal(a, var), -a_bound, a_bound)    # add randomness to action selection for exploration
        #if var<0.01:
            #a=np.clip(np.random.normal(a, a_bound), -a_bound, a_bound)
        s_, r, done, hit = env.step(a,i)
        s = s_
        ep_reward += r
        if j == MAX_EP_STEPS - 1:
            EWMA_step[0,i+1]=EWMA_p*EWMA_step[0,i]+(1-EWMA_p)*j
            EWMA_reward[0,i+1]=EWMA_p*EWMA_reward[0,i]+(1-EWMA_p)*ep_reward
            #EWMA[0,i+1]=EWMA[0,i+1]/(1-(EWMA_p **(i+1)))
            print('Episode:', i, ' Reward: %i' % int(ep_reward), 'Explore: %.2f' % var,"good","EWMA_step = ",EWMA_step[0,i+1],"EWMA_reward = ",EWMA_reward[0,i+1],"LR_A = ",LR_A)


        elif done:
            EWMA_step[0,i+1]=EWMA_p*EWMA_step[0,i]+(1-EWMA_p)*j
            EWMA_reward[0,i+1]=EWMA_p*EWMA_reward[0,i]+(1-EWMA_p)*ep_reward
            #EWMA[0,i+1]=EWMA[0,i+1]/(1-(EWMA_p **(i+1)))
            if hit==1:
                print('Episode:', i, ' Reward: %i' % int(ep_reward), 'Explore: %.2f' % var, "break in : ", j, "due to ",
                      "hit the wall", "EWMA_step = ", EWMA_step[0, i + 1], "EWMA_reward = ", EWMA_reward[0, i + 1],"LR_A = ",LR_A)
            else:
                print('Episode:', i, ' Reward: %i' % int(ep_reward), 'Explore: %.2f' % var, "break in : ", j, "due to",
                      "fall down","EWMA_step = ", EWMA_step[0, i + 1], "EWMA_reward = ", EWMA_reward[0, i + 1],"LR_A = ",LR_A)
            win=0
            break

print('Running time: ', time.time() - t1)