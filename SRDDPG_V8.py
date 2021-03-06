import matplotlib
matplotlib.use('TkAgg')
import tensorflow as tf
import numpy as np
import time
import matplotlib.pyplot as plt
from ENV_V0 import CartPoleEnv_adv as dreamer
import os
os.environ["CUDA_DEVICE_ORDER"] = "PCI_BUS_ID"
os.environ["CUDA_VISIBLE_DEVICES"] = "1"
#####################  hyper parameters  ####################
MAX_EPISODES = 2000
MAX_EP_STEPS =2500
LR_A = 0.0001    # learning rate for actor
LR_C = 0.0002    # learning rate for critic
LR_L = 0.0002    # learning rate for Lyapunov
GAMMA = 0.99    # reward discount
TAU = 0.01  # soft replacement
MEMORY_CAPACITY = 10000
CONS_MEMORY_CAPACITY = 2500
BATCH_SIZE = 128
labda=10.
RENDER = True
tol = 0.001
# ENV_NAME = 'CartPole-v2'
env = dreamer()
# env = gym.make(ENV_NAME)
env = env.unwrapped


# For analyse
EWMA_p=0.95
EWMA_step=np.zeros((1,MAX_EPISODES+1))
EWMA_reward=np.zeros((1,MAX_EPISODES+1))
iteration=np.zeros((1,MAX_EPISODES+1))


# Training setting
var = 5  # control exploration
t1 = time.time()
max_reward=0
max_ewma_reward=0
###############################  DDPG  ####################################
class DDPG(object):
    def __init__(self, a_dim, s_dim, a_bound,Lyapunov_switch):
        ###############################  Model parameters  ####################################
        self.memory = np.zeros((MEMORY_CAPACITY, s_dim * 2 + a_dim + 2), dtype=np.float32)
        self.cons_memory = np.zeros((CONS_MEMORY_CAPACITY, s_dim * 2 + a_dim + 2), dtype=np.float32)
        self.pointer = 0
        self.cons_pointer = 0
        self.sess = tf.Session()

        self.a_dim, self.s_dim, self.a_bound = a_dim, s_dim, a_bound,
        self.S = tf.placeholder(tf.float32, [None, s_dim], 's')
        self.S_ = tf.placeholder(tf.float32, [None, s_dim], 's_')
        self.cons_S = tf.placeholder(tf.float32, [None, s_dim], 's')
        self.cons_S_ = tf.placeholder(tf.float32, [None, s_dim], 's_')
        self.R = tf.placeholder(tf.float32, [None, 1], 'r')
        self.l_R = tf.placeholder(tf.float32, [None, 1], 'l_r')  # 给lyapunov设计的reward
        self.LR_A = tf.placeholder(tf.float32, None, 'LR_A')
        self.LR_C = tf.placeholder(tf.float32, None, 'LR_C')
        self.LR_L = tf.placeholder(tf.float32, None, 'LR_L')
        self.labda = tf.placeholder(tf.float32, None, 'Lambda')
        self.a = self._build_a(self.S, )  # 这个网络用于及时更新参数
        self.q = self._build_c(self.S, self.a)  # 这个网络是用于及时更新参数
        self.l = self._build_l(self.S, self.a)   # lyapunov 网络

        self.ly_switch=Lyapunov_switch

        a_params = tf.get_collection(tf.GraphKeys.TRAINABLE_VARIABLES, scope='Actor')
        c_params = tf.get_collection(tf.GraphKeys.TRAINABLE_VARIABLES, scope='Critic')
        l_params = tf.get_collection(tf.GraphKeys.TRAINABLE_VARIABLES, scope='Lyapunov')



        ###############################  Model Learning Setting  ####################################
        ema = tf.train.ExponentialMovingAverage(decay=1 - TAU)  # soft replacement
        def ema_getter(getter, name, *args, **kwargs):
            return ema.average(getter(name, *args, **kwargs))
        target_update = [ema.apply(a_params), ema.apply(c_params),ema.apply(l_params)]  # soft update operation

        # 这个网络不及时更新参数, 用于预测 Critic 的 Q_target 中的 action
        a_ = self._build_a(self.S_, reuse=True, custom_getter=ema_getter)  # replaced target parameters
        cons_a = self._build_a(self.cons_S, reuse=True)
        cons_a_ = self._build_a(self.cons_S_, reuse=True)



        # 这个网络不及时更新参数, 用于给出 Actor 更新参数时的 Gradient ascent 强度
        q_ = self._build_c(self.S_, tf.stop_gradient(a_), reuse=True, custom_getter=ema_getter)
        l_ = self._build_l(self.S_, tf.stop_gradient(a_), reuse=True, custom_getter=ema_getter)
        self.cons_l = self._build_l(self.cons_S, tf.stop_gradient(cons_a), reuse=True)
        self.cons_l_ = self._build_l(self.cons_S_, cons_a_, reuse=True)

        ALPHA3=0.1
        self.l_lambda = tf.reduce_mean(self.cons_l_ - self.cons_l+ ALPHA3 * self.l_R)

        if self.ly_switch == True :
            a_loss = self.labda * self.l_lambda - tf.reduce_mean(self.q)
        else:
            a_loss = -tf.reduce_mean(self.q)


        self.atrain = tf.train.AdamOptimizer(self.LR_A).minimize(a_loss,var_list=a_params)  #以learning_rate去训练，方向是minimize loss，调整列表参数，用adam

        with tf.control_dependencies(target_update):  # soft replacement happened at here
            q_target = self.R + GAMMA * q_    #ddpg
            l_target = self.l_R + GAMMA * l_  # Lyapunov critic
            self.td_error = tf.losses.mean_squared_error(labels=q_target, predictions=self.q)
            self.l_error = tf.losses.mean_squared_error(labels=l_target, predictions=self.l)
            self.ctrain = tf.train.AdamOptimizer(self.LR_C).minimize(self.td_error, var_list=c_params)
            self.ltrain = tf.train.AdamOptimizer(self.LR_L).minimize(self.l_error, var_list=l_params)

        self.sess.run(tf.global_variables_initializer())
        self.saver = tf.train.Saver()

    def choose_action(self, s):
        return self.sess.run(self.a, {self.S: s[np.newaxis, :]})[0]

    def learn(self, LR_A, LR_C,LR_L, labda):
        indices = np.random.choice(MEMORY_CAPACITY, size=BATCH_SIZE)
        bt = self.memory[indices, :]
        bs = bt[:, :self.s_dim]  # state
        ba = bt[:, self.s_dim: self.s_dim + self.a_dim]  # action
        br = bt[:, -self.s_dim - 2: -self.s_dim - 1]  # reward
        blr = bt[:, -self.s_dim - 1: -self.s_dim]  # l_reward
        bs_ = bt[:, -self.s_dim:]  # next state

        # 边缘的 s a s_ l_r
        indices = np.random.choice(CONS_MEMORY_CAPACITY, size=BATCH_SIZE)
        bt = self.cons_memory[indices, :]
        cons_bs = bt[:, :self.s_dim]
        cons_ba = bt[:, self.s_dim: self.s_dim + self.a_dim]
        cons_bs_ = bt[:, -self.s_dim:]
        cons_blr = bt[:, -self.s_dim - 1: -self.s_dim]


        self.sess.run(self.atrain, {self.S: bs, self.S_: bs_, self.LR_A: LR_A, self.labda: labda, self.cons_S: cons_bs,
                                    self.cons_S_: cons_bs_, self.l_R: cons_blr})
        self.sess.run(self.ctrain,
                      {self.S: bs, self.a: ba, self.R: br, self.S_: bs_, self.LR_C: LR_C})
        self.sess.run(self.ltrain,
                      {self.S: bs, self.a: ba, self.S_: bs_, self.l_R: blr, self.LR_L: LR_L})

        return self.sess.run(self.l_lambda, {self.cons_S: cons_bs,
                                             self.cons_S_: cons_bs_, self.l_R: cons_blr}), \
               self.sess.run(self.td_error,
                             {self.S: bs, self.a: ba, self.R: br, self.S_: bs_}), \
               self.sess.run(self.l_error, {self.S: cons_bs, self.a: cons_ba, self.S_: cons_bs_, self.l_R: cons_blr})

    def store_transition(self, s, a, r, l_r, s_):
        transition = np.hstack((s, a, [r], [l_r], s_))
        index = self.pointer % MEMORY_CAPACITY  # replace the old memory with new memory
        self.memory[index, :] = transition
        self.pointer += 1

    def store_edge_transition(self, s, a,r, l_r, s_):
        """把数据存入constraint buffer"""
        transition = np.hstack((s, a,[r], [l_r], s_))
        index = self.cons_pointer % CONS_MEMORY_CAPACITY  # replace the old memory with new memory
        self.cons_memory[index, :] = transition
        self.cons_pointer += 1

    #action 选择模块也是actor模块
    def _build_a(self, s, reuse=None, custom_getter=None):
        trainable = True
        with tf.variable_scope('Actor', reuse=reuse, custom_getter=custom_getter):
            net_0 = tf.layers.dense(s, 256, activation=tf.nn.relu, name='l1', trainable=trainable)#原始是30
            net_1 = tf.layers.dense(net_0, 256, activation=tf.nn.relu, name='l2', trainable=trainable)  # 原始是30
            net_2 = tf.layers.dense(net_1, 256, activation=tf.nn.relu, name='l3', trainable=trainable)  # 原始是30
            net_3 = tf.layers.dense(net_2, 128, activation=tf.nn.relu, name='l4', trainable=trainable)  # 原始是30
            a = tf.layers.dense(net_3, self.a_dim, activation=tf.nn.tanh, name='a', trainable=trainable)
            return tf.multiply(a, self.a_bound, name='scaled_a')
    #critic模块
    def _build_c(self, s, a, reuse=None, custom_getter=None):
        trainable = True if reuse is None else False
        with tf.variable_scope('Critic', reuse=reuse, custom_getter=custom_getter):
            n_l1 = 256#30
            w1_s = tf.get_variable('w1_s', [self.s_dim, n_l1], trainable=trainable)
            w1_a = tf.get_variable('w1_a', [self.a_dim, n_l1], trainable=trainable)
            b1 = tf.get_variable('b1', [1, n_l1], trainable=trainable)
            net_0 = tf.nn.relu(tf.matmul(s, w1_s) + tf.matmul(a, w1_a) + b1)
            net_1 = tf.layers.dense(net_0, 256, activation=tf.nn.relu, name='l2', trainable=trainable)  # 原始是30
            net_2 = tf.layers.dense(net_1, 128, activation=tf.nn.relu, name='l3', trainable=trainable)  # 原始是30
            return tf.layers.dense(net_2, 1, trainable=trainable)  # Q(s,a)

    def _build_l(self, s, a, reuse=None, custom_getter=None):
        trainable = True if reuse is None else False
        with tf.variable_scope('Lyapunov', reuse=reuse, custom_getter=custom_getter):
            n_l1 = 256#30
            w1_s = tf.get_variable('w1_s', [self.s_dim, n_l1], trainable=trainable)
            w1_a = tf.get_variable('w1_a', [self.a_dim, n_l1], trainable=trainable)
            b1 = tf.get_variable('b1', [1, n_l1], trainable=trainable)
            net_0 = tf.nn.relu(tf.matmul(s, w1_s) + tf.matmul(a, w1_a) + b1)
            net_1 = tf.layers.dense(net_0, 256, activation=tf.nn.relu, name='l2', trainable=trainable)  # 原始是30
            net_2 = tf.layers.dense(net_1, 128, activation=tf.nn.relu, name='l3', trainable=trainable)  # 原始是30
            return tf.layers.dense(net_2, 1, trainable=trainable)  # Q(s,a)


    def save_result(self):
        save_path = self.saver.save(self.sess, "Model/V8_.ckpt")
        print("Save to path: ", save_path)


###############################  training  ####################################

s_dim = env.observation_space.shape[0]
a_dim = env.action_space.shape[0]
a_bound = env.action_space.high
Lyapunov=False
ddpg = DDPG(a_dim, s_dim, a_bound,Lyapunov)
lyapunov_error=100000
critic_error=100000
for i in range(MAX_EPISODES):
    iteration[0,i+1]=i+1
    s = env.reset()
    ep_reward = 0
    l_loss = np.nan
    c_loss = np.nan
    L_values = []
    l_rewards = []

    for j in range(MAX_EP_STEPS):
        # Visulization
        if RENDER:
            env.render()

        # Choose action
        # Add exploration noise
        a = ddpg.choose_action(s)
        a = np.clip(np.random.normal(a, var), -a_bound, a_bound)


        # Run in simulator
        s_, r, done, hit = env.step(a)

        #Lyapunov reward
        r1 = max(abs(s_[0]) /10,1/2)
        r2 = (abs(s_[2])/ env.theta_threshold_radians)

        l_r= (20*r1)**2 +(20*r2)**2
        l_rewards.append(l_r)
        # print(r,l_r)
        # 储存s,a和s_next,reward用于DDPG的学习
        ddpg.store_transition(s, a,(r / 10), l_r/10, s_)

        # 如果状态接近边缘 就存储到边缘memory里
        if np.abs(s[0]) > 4.5:  # or np.abs(s[2]) > env.theta_threshold_radians*0.8
            ddpg.store_edge_transition(s, a, (r / 10), l_r / 10, s_)


        # Learn
        if Lyapunov:
            if ddpg.pointer > MEMORY_CAPACITY and ddpg.cons_pointer > CONS_MEMORY_CAPACITY:
                # Decay the action randomness
                var *= .99999
                l_q, c_loss, l_loss = ddpg.learn(LR_A, LR_C, LR_L,labda)
                if l_q > tol:
                    if labda == 0:
                        labda = 1e-8
                    labda = min(labda * 2, 1e2)
                if l_q < -tol:
                    labda = labda / 2

        else:
            if ddpg.pointer > MEMORY_CAPACITY:
                # Decay the action randomness
                var *= .99999
                l_q, c_loss, l_loss = ddpg.learn(LR_A, LR_C, LR_L,0)



        # 状态更新
        s = s_
        ep_reward += r

        # OUTPUT TRAINING INFORMATION AND LEARNING RATE DECAY
        if j == MAX_EP_STEPS - 1:
            EWMA_step[0,i+1]=EWMA_p*EWMA_step[0,i]+(1-EWMA_p)*j
            EWMA_reward[0,i+1]=EWMA_p*EWMA_reward[0,i]+(1-EWMA_p)*ep_reward

            print('Episode:', i, ' Reward: %.1f' % ep_reward, 'Explore: %.2f' % var, "good",
                  "EWMA_step = ", int(EWMA_step[0, i + 1]), "EWMA_reward = ", EWMA_reward[0, i + 1], "LR_A = ", LR_A, "LR_C = ", LR_C, "LR_L = ", LR_L,
                  'lambda', labda,
                  'lyapunov_error:', l_loss, 'critic_error:', c_loss)

            if EWMA_reward[0,i+1]>max_ewma_reward:
                max_ewma_reward=min(EWMA_reward[0,i+1],500000)
                LR_A *= .8  # learning rate for actor
                LR_C *= .8  # learning rate for critic
                LR_L *= .8  # learning rate for critic
                ddpg.save_result()


            if ep_reward> max_reward:
                max_reward = min(ep_reward,500000)
                LR_A *= .8  # learning rate for actor
                LR_C *= .8  # learning rate for critic
                LR_L *= .8  # learning rate for critic
                ddpg.save_result()
                print("max_reward : ",ep_reward)

            if l_loss<lyapunov_error:
               lyapunov_error=l_loss
               LR_L *=.9

            if c_loss<critic_error:
               critic_error=c_loss
               LR_C *=.9

            else:
                LR_A *= .99
                LR_C *= .99
                LR_L *= .99
            break

        elif done:
            EWMA_step[0,i+1]=EWMA_p*EWMA_step[0,i]+(1-EWMA_p)*j
            EWMA_reward[0,i+1]=EWMA_p*EWMA_reward[0,i]+(1-EWMA_p)*ep_reward
            if hit==1:
                print('Episode:', i, ' Reward: %.1f' % ep_reward, 'Explore: %.2f' % var, "break in : ", j, "due to ",
                      "hit the wall", "EWMA_step = ", int(EWMA_step[0, i + 1]), "EWMA_reward = ", EWMA_reward[0, i + 1],
                      "LR_A = ", LR_A, "LR_C = ", LR_C, "LR_L = ", LR_L, 'lambda', labda, 'lyapunov_error:', l_loss, 'critic_error:',
                      c_loss)
            else:
                print('Episode:', i, ' Reward: %.1f' % ep_reward, 'Explore: %.2f' % var, "break in : ", j, "due to",
                      "fall down", "EWMA_step = ", int(EWMA_step[0, i + 1]), "EWMA_reward = ", EWMA_reward[0, i + 1],
                      "LR_A = ", LR_A, "LR_C = ", LR_C, "LR_L = ", LR_L, 'lambda', labda, 'lyapunov_error:', l_loss, 'critic_error:',
                      c_loss)
            break

print('Running time: ', time.time() - t1)
