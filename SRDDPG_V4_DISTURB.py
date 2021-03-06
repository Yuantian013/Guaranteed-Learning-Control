import matplotlib
matplotlib.use('TkAgg')
import tensorflow as tf
import numpy as np
import time
import matplotlib.pyplot as plt
import os
import math
from cartpole_uncertainty import CartPoleEnv_adv as real_env
os.environ["CUDA_DEVICE_ORDER"] = "PCI_BUS_ID"
os.environ["CUDA_VISIBLE_DEVICES"] = "1"
#####################  hyper parameters  ####################

MAX_EPISODES = 50000
MAX_EP_STEPS =2500
LR_A = 0.0001    # learning rate for actor
LR_C = 0.0002    # learning rate for critic
LR_D = 0.0001    # learning rate for disturb
GAMMA = 0.99    # reward discount
TAU = 0.01  # soft replacement
MEMORY_CAPACITY = 10000
BATCH_SIZE = 128
labda=10.
tol = 0.001

RENDER = True
DISTURB=False
DREAMER=False
print("Dreamer = ",DREAMER,",DISTURB = " ,DISTURB,",RENDER = ",RENDER)
# For get hit or die info
env = real_env()
env = env.unwrapped

# For analyse
EWMA_p=0.95
EWMA_step=np.zeros((1,MAX_EPISODES+1))
EWMA_reward=np.zeros((1,MAX_EPISODES+1))
iteration=np.zeros((1,MAX_EPISODES+1))

# Training setting
var = 5  # control exploration
t1 = time.time()
max_reward=100000
max_ewma_reward=20000

###############################  DDPG  ####################################
class DDPG(object):
    def __init__(self, a_dim, s_dim, a_bound,):
        ###############################  Model parameters  ####################################
        self.memory = np.zeros((MEMORY_CAPACITY, s_dim * 2 + a_dim + 3), dtype=np.float32)
        self.pointer = 0
        self.sess = tf.Session()

        self.a_dim, self.s_dim, self.a_bound = a_dim, s_dim, a_bound,
        self.S = tf.placeholder(tf.float32, [None, s_dim], 's')
        self.S_ = tf.placeholder(tf.float32, [None, s_dim], 's_')
        self.R = tf.placeholder(tf.float32, [None, 1], 'r')
        self.LR_A = tf.placeholder(tf.float32, None, 'LR_A')
        self.LR_C = tf.placeholder(tf.float32, None, 'LR_C')
        self.LR_D = tf.placeholder(tf.float32, None, 'LR_D')
        self.labda = tf.placeholder(tf.float32, None, 'Lambda')
        self.a = self._build_a(self.S, )  # 这个网络用于及时更新参数
        self.d = self._build_d(self.S, )  # 这个网络用于及时更新参数
        self.q = self._build_c(self.S, self.a, self.d)  # 这个网络是用于及时更新参数
        self.q = self._build_c(self.S, self.a)  # 这个网络是用于及时更新参数
        a_params = tf.get_collection(tf.GraphKeys.TRAINABLE_VARIABLES, scope='Actor')
        c_params = tf.get_collection(tf.GraphKeys.TRAINABLE_VARIABLES, scope='Critic')
        d_params = tf.get_collection(tf.GraphKeys.TRAINABLE_VARIABLES, scope='Disturber')


        ###############################  Model Learning Setting  ####################################

        ema = tf.train.ExponentialMovingAverage(decay=1 - TAU)  # soft replacement
        def ema_getter(getter, name, *args, **kwargs):
            return ema.average(getter(name, *args, **kwargs))
        target_update = [ema.apply(a_params), ema.apply(c_params), ema.apply(d_params)]  # soft update operation


        beta = 0.01
        a_ = self._build_a(self.S_, reuse=True, custom_getter=ema_getter)   # replaced target parameters
        a_cons = self._build_a(self.S_, reuse=True)
        d_ = self._build_d(self.S_, reuse=True, custom_getter=ema_getter)  # replaced target parameters
        d_cons = self._build_d(self.S_, reuse=True)

        q_ = self._build_c(self.S_, tf.stop_gradient(a_), tf.stop_gradient(d_), reuse=True, custom_getter=ema_getter)
        self.q_cons = self._build_c(self.S_, a_cons, d_cons, reuse=True)


        self.q_lambda =tf.reduce_mean(self.q - self.q_cons)


        a_loss = - tf.reduce_mean(self.q) + self.labda * self.q_lambda  # maximize the q
        d_loss = tf.reduce_mean(self.q)

        self.atrain = tf.train.AdamOptimizer(self.LR_A).minimize(a_loss, var_list=a_params)#以learning_rate去训练，方向是minimize loss，调整列表参数，用adam
        self.dtrain = tf.train.AdamOptimizer(self.LR_D).minimize(d_loss,
                                                                 var_list=d_params)  # 以learning_rate去训练，方向是minimize loss，调整列表参数，用adam

        with tf.control_dependencies(target_update):    # soft replacement happened at here
            q_target = self.R + GAMMA * q_+ beta*tf.matmul(self.d,tf.transpose(self.d))
            td_error = tf.losses.mean_squared_error(labels=q_target, predictions=self.q)
            self.ctrain = tf.train.AdamOptimizer(self.LR_C).minimize(td_error, var_list=c_params)


        self.sess.run(tf.global_variables_initializer())
        self.saver = tf.train.Saver()


    def choose_action(self, s):
        return self.sess.run(self.a, {self.S: s[np.newaxis, :]})[0]

    def choose_disturb(self, s):
        return self.sess.run(self.d, {self.S: s[np.newaxis, :]})[0]

    def learn(self,LR_A,LR_D,LR_C,labda):
        indices = np.random.choice(MEMORY_CAPACITY, size=BATCH_SIZE)
        bt = self.memory[indices, :]
        bs = bt[:, :self.s_dim]
        ba = bt[:, self.s_dim: self.s_dim + self.a_dim]
        bd = bt[:, self.s_dim + self.a_dim: self.s_dim + self.a_dim+2]
        br = bt[:, -self.s_dim - 1: -self.s_dim]
        bs_ = bt[:, -self.s_dim:]

        self.sess.run(self.dtrain, {self.S: bs, self.S_: bs_, self.LR_D: LR_D})
        self.sess.run(self.atrain, {self.S: bs, self.S_: bs_, self.LR_A: LR_A, self.labda: labda})
        self.sess.run(self.ctrain,
                      {self.S: bs, self.a: ba, self.R: br, self.S_: bs_,self.LR_C: LR_C, self.d: bd})
        return self.sess.run(self.q_lambda,{self.S: bs, self.a: ba, self.R: br, self.S_: bs_}),self.sess.run(self.R, {self.R: br})

    def store_transition(self, s, a, d, r, s_):
        transition = np.hstack((s, a, d,[r], s_))
        index = self.pointer % MEMORY_CAPACITY  # replace the old memory with new memory
        self.memory[index, :] = transition
        self.pointer += 1

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
    def _build_c(self, s, a, d,reuse=None, custom_getter=None):
        trainable = True if reuse is None else False
        with tf.variable_scope('Critic', reuse=reuse, custom_getter=custom_getter):
            n_l1 = 256#30
            w1_s = tf.get_variable('w1_s', [self.s_dim, n_l1], trainable=trainable)
            w1_a = tf.get_variable('w1_a', [self.a_dim, n_l1], trainable=trainable)
            w1_d = tf.get_variable('w1_d', [self.s_dim/2, n_l1], trainable=trainable)
            b1 = tf.get_variable('b1', [1, n_l1], trainable=trainable)
            net_0 = tf.nn.relu(tf.matmul(s, w1_s) + tf.matmul(a, w1_a)+tf.matmul(d, w1_d)+b1)
            net_1 = tf.layers.dense(net_0, 256, activation=tf.nn.relu, name='l2', trainable=trainable)
            net_2 = tf.layers.dense(net_1, 128, activation=tf.nn.relu, name='l3', trainable=trainable)
            return tf.layers.dense(net_2, 1, trainable=trainable)  # Q(s,a)

    def _build_d(self, s, reuse=None, custom_getter=None):
        theta_threshold_radians = 20 * 2 * math.pi / 360
        x_threshold = 5
        trainable = True
        with tf.variable_scope('Disturber', reuse=reuse, custom_getter=custom_getter):
            # net_0 = tf.layers.dense(s, 256, activation=tf.nn.relu, name='l1', trainable=trainable)
            # net_1 = tf.layers.dense(net_0, 256, activation=tf.nn.relu, name='l2', trainable=trainable)
            # net_2 = tf.layers.dense(net_1, 256, activation=tf.nn.relu, name='l3', trainable=trainable)
            # net_3 = tf.layers.dense(net_2, 128, activation=tf.nn.relu, name='l4', trainable=trainable)
            # x = tf.layers.dense(net_3, self.s_dim/4, activation=tf.nn.tanh, name='x', trainable=trainable)
            #
            # net_4 = tf.layers.dense(s, 256, activation=tf.nn.relu, name='l5', trainable=trainable)
            # net_5 = tf.layers.dense(net_4, 256, activation=tf.nn.relu, name='l6', trainable=trainable)
            # net_6 = tf.layers.dense(net_5, 256, activation=tf.nn.relu, name='l7', trainable=trainable)
            # net_7 = tf.layers.dense(net_6, 128, activation=tf.nn.relu, name='l8', trainable=trainable)
            # theta=tf.layers.dense(net_7, self.s_dim/4, activation=tf.nn.tanh, name='theta', trainable=trainable)
            # # print([tf.multiply(x, x_threshold/10, name='scaled_x')[0],tf.multiply(theta, theta_threshold_radians/10, name='scaled_theta')[0]])
            # # return tf.multiply(x, x_threshold/10, name='scaled_x'),tf.multiply(theta, theta_threshold_radians/10, name='scaled_theta')
            # return [tf.multiply(x, x_threshold/10, name='scaled_x'),tf.multiply(theta, theta_threshold_radians/10, name='scaled_theta')]
            net_0 = tf.layers.dense(s, 512, activation=tf.nn.relu, name='l1', trainable=trainable)
            net_1 = tf.layers.dense(net_0, 512, activation=tf.nn.relu, name='l2', trainable=trainable)
            net_2 = tf.layers.dense(net_1, 512, activation=tf.nn.relu, name='l3', trainable=trainable)
            net_3 = tf.layers.dense(net_2, 256, activation=tf.nn.relu, name='l4', trainable=trainable)
            d = tf.layers.dense(net_3, self.s_dim/2, activation=tf.nn.tanh, name='d', trainable=trainable)
            # print(tf.multiply(d, [x_threshold/10,theta_threshold_radians/10], name='scaled_d'))
            return tf.multiply(d, [x_threshold/10,theta_threshold_radians/10], name='scaled_d')

    def save_result(self):
        save_path = self.saver.save(self.sess, "Model/SRDDPG_In_Dream.ckpt")
        print("Save to path: ", save_path)

class DDPG(object):
    def __init__(self, a_dim, s_dim, a_bound,):
        self.memory = np.zeros((MEMORY_CAPACITY, s_dim * 2 + a_dim + 3), dtype=np.float32)
        self.pointer = 0
        self.sess = tf.Session()

        self.a_dim, self.s_dim, self.a_bound = a_dim, s_dim, a_bound,
        self.S = tf.placeholder(tf.float32, [None, s_dim], 's')
        self.S_ = tf.placeholder(tf.float32, [None, s_dim], 's_')
        self.R = tf.placeholder(tf.float32, [None, 1], 'r')
        self.LR_A= tf.placeholder(tf.float32, None, 'LR_A')
        self.LR_C = tf.placeholder(tf.float32, None, 'LR_C')
        self.labda= tf.placeholder(tf.float32, None, 'Lambda')

        self.a = self._build_a(self.S,)# 这个网络用于及时更新参数
        self.q = self._build_c(self.S, self.a, )# 这个网络是用于及时更新参数
        a_params = tf.get_collection(tf.GraphKeys.TRAINABLE_VARIABLES, scope='Actor')
        c_params = tf.get_collection(tf.GraphKeys.TRAINABLE_VARIABLES, scope='Critic')
        ema = tf.train.ExponentialMovingAverage(decay=1 - TAU)          # soft replacement

        def ema_getter(getter, name, *args, **kwargs):
            return ema.average(getter(name, *args, **kwargs))

        target_update = [ema.apply(a_params), ema.apply(c_params)]      # soft update operation
        # 这个网络不及时更新参数, 用于预测 Critic 的 Q_target 中的 action
        a_ = self._build_a(self.S_, reuse=True, custom_getter=ema_getter)   # replaced target parameters
        a_cons = self._build_a(self.S_, reuse=True)
        # 这个网络不及时更新参数, 用于给出 Actor 更新参数时的 Gradient ascent 强度
        # q_ = self._build_c(self.S_, tf.stop_gradient(a_), reuse=True, custom_getter=ema_getter)
        q_ = self._build_c(self.S_, tf.stop_gradient(a_), reuse=True, custom_getter=ema_getter)
        self.q_cons = self._build_c(self.S_, a_cons, reuse=True)

        self.q_lambda =tf.reduce_mean(self.q - self.q_cons)
        # self.q_lambda = tf.reduce_mean(self.q_cons - self.q)

        a_loss = - tf.reduce_mean(self.q) + self.labda * self.q_lambda  # maximize the q

        self.atrain = tf.train.AdamOptimizer(self.LR_A).minimize(a_loss, var_list=a_params)#以learning_rate去训练，方向是minimize loss，调整列表参数，用adam

        with tf.control_dependencies(target_update):    # soft replacement happened at here
            q_target = self.R + GAMMA * q_
            td_error = tf.losses.mean_squared_error(labels=q_target, predictions=self.q)
            self.ctrain = tf.train.AdamOptimizer(self.LR_C).minimize(td_error, var_list=c_params)


        self.sess.run(tf.global_variables_initializer())
        self.saver = tf.train.Saver()
        # self.saver.restore(self.sess, "Save/cartpole_g10_M1_m0.1_l0.5_tau_0.02.ckpt")  # 1 0.1 0.5 0.001

    def choose_action(self, s):
        return self.sess.run(self.a, {self.S: s[np.newaxis, :]})[0]

    def learn(self,LR_A,LR_C,LR_D,labda):
        indices = np.random.choice(MEMORY_CAPACITY, size=BATCH_SIZE)
        bt = self.memory[indices, :]
        bs = bt[:, :self.s_dim]
        ba = bt[:, self.s_dim: self.s_dim + self.a_dim]
        br = bt[:, -self.s_dim - 1: -self.s_dim]
        bs_ = bt[:, -self.s_dim:]

        self.sess.run(self.atrain, {self.S: bs, self.S_: bs_, self.LR_A: LR_A,self.labda:labda})
        self.sess.run(self.ctrain,{self.S: bs, self.a: ba, self.R: br, self.S_: bs_, self.LR_C: LR_C,self.labda:labda})
        return self.sess.run(self.q_lambda,{self.S: bs, self.a: ba, self.R: br, self.S_: bs_}),self.sess.run(self.R, {self.R: br})

    def store_transition(self, s, a, d,r, s_):
        transition = np.hstack((s, a, d,[r], s_))
        index = self.pointer % MEMORY_CAPACITY  # replace the old memory with new memory
        self.memory[index, :] = transition
        self.pointer += 1

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

    def save_result(self):
        # save_path = self.saver.save(self.sess, "Save/cartpole_g10_M1_m0.1_l0.5_tau_0.02.ckpt")
        save_path = self.saver.save(self.sess, "Model/SRDDPG_Dream.ckpt")
        # save_path = self.saver.save(self.sess, "Model/SRDDPG_INITIAL.ckpt")
        print("Save to path: ", save_path)
###############################  DREAMER  ####################################
class Dreamer(object):
    metadata = {
        'render.modes': ['human', 'rgb_array'],
        'video.frames_per_second': 50
    }
    def __init__(self, a_dim, s_dim, a_bound,):
        tf.reset_default_graph()
        # Model parameter
        self.memory = np.zeros((MEMORY_CAPACITY, s_dim * 3 + a_dim), dtype=np.float32)
        self.pointer = 0
        self.sess = tf.Session()

        self.a_dim, self.s_dim, self.a_bound = a_dim, s_dim, a_bound,
        self.S = tf.placeholder(tf.float32, [None, s_dim], 's')
        self.S_ = tf.placeholder(tf.float32, [None, s_dim], 's_')
        self.S_L = tf.placeholder(tf.float32, [None, s_dim], 's_l')
        self.LR_D= tf.placeholder(tf.float32, None, 'LR_D')
        self.A = tf.placeholder(tf.float32, [None, a_dim], 'a')

        # Dynamics Parameter
        self.gravity = 10
        self.masscart = 1
        self.masspole = 0.1
        self.total_mass = (self.masspole + self.masscart)
        self.length = 0.5  # actually half the pole's length
        self.polemass_length = (self.masspole * self.length)
        self.force_mag = 20
        self.tau = 0.02  # seconds between state updates

        #Render Part
        self.viewer = None
        self.state = None
        self.x_threshold=5
        #Learning Part
        self.dreamer = self._build_dreamer(self.S, self.A,self.S_L) #S_=linear_model+DNN=S_L+DNN(S,A)

        d_params = tf.get_collection(tf.GraphKeys.TRAINABLE_VARIABLES, scope='Dreamer')

        self.dreamer_loss_s = tf.reduce_mean(tf.squared_difference(self.S_ , self.dreamer))

        self.dreamertrain_s = tf.train.AdamOptimizer(self.LR_D).minimize(self.dreamer_loss_s,var_list = d_params)

        self.sess.run(tf.global_variables_initializer())
        self.saver = tf.train.Saver()
        self.saver.restore(self.sess, "Model/SRDDPG_Dreamer_V1.ckpt")  # 1 0.1 0.5 0.001

    def dream(self, s,a,d):
        x, x_dot, theta, theta_dot = s
        force = a[0]
        costheta = 1
        sintheta = theta
        temp = (force + self.polemass_length * theta_dot * theta_dot * sintheta) / self.total_mass
        thetaacc = (self.gravity * sintheta - costheta * temp) / (
                self.length * (4.0 / 3.0 - self.masspole * costheta * costheta / self.total_mass))
        xacc = temp - self.polemass_length * thetaacc * costheta / self.total_mass

        x_ = x + self.tau * x_dot+d[0]
        x_dot_ = x_dot + self.tau * xacc
        theta_ = theta + self.tau * theta_dot+d[1]
        theta_dot_ = theta_dot + self.tau * thetaacc
        s_linear = np.array([x_, x_dot_, theta_, theta_dot_])

        s_=self.sess.run(self.dreamer, {self.S: s[np.newaxis, :],self.A: a[np.newaxis, :],self.S_L: s_linear[np.newaxis, :]})[0]

        x, _, theta, _ = s_
        r_1 = ((1 - abs(x)))
        r_2 = (((20 * 2 * math.pi / 360) / 4) - abs(theta)) / ((20 * 2 * math.pi / 360) / 4)
        reward = np.sign(r_2) * ((10 * r_2) ** 2) + np.sign(r_1) * ((10 * r_1) ** 2)
        self.state = s_
        return s_,reward

    def learn(self,LR_D):
        indices = np.random.choice(MEMORY_CAPACITY, size=BATCH_SIZE)
        bt = self.memory[indices, :]
        bs = bt[:, :self.s_dim]
        ba = bt[:, self.s_dim: self.s_dim + self.a_dim]
        bs_ = bt[:, -self.s_dim:]
        bs_l=bt[:, -self.s_dim - 4: -self.s_dim]
        self.sess.run(self.dreamertrain_s, {self.S: bs,self.A: ba, self.S_: bs_,self.S_L: bs_l, self.LR_D: LR_D})

        return self.sess.run(self.dreamer_loss_s, {self.S: bs,self.A: ba, self.S_: bs_,self.S_L: bs_l, self.LR_D: LR_D})

    def store_transition(self, s, a,s_):
        x, x_dot, theta, theta_dot = s
        force = a[0]
        costheta = 1
        sintheta = theta
        temp = (force + self.polemass_length * theta_dot * theta_dot * sintheta) / self.total_mass
        thetaacc = (self.gravity * sintheta - costheta * temp) / (
                self.length * (4.0 / 3.0 - self.masspole * costheta * costheta / self.total_mass))
        xacc = temp - self.polemass_length * thetaacc * costheta / self.total_mass
        x_ = x + self.tau * x_dot
        x_dot_ = x_dot + self.tau * xacc
        theta_ = theta + self.tau * theta_dot
        theta_dot_ = theta_dot + self.tau * thetaacc
        s_linear = np.array([x_, x_dot_, theta_, theta_dot_])

        transition = np.hstack((s, a,s_linear,s_))
        index = self.pointer % MEMORY_CAPACITY  # replace the old memory with new memory
        self.memory[index, :] = transition
        self.pointer += 1

    def _build_dreamer(self, s, a,s_linear,reuse=None, custom_getter=None):
        trainable = True if reuse is None else False
        with tf.variable_scope('Dreamer', reuse=reuse, custom_getter=custom_getter):
            n_l1 = 512#30
            w1_s = tf.get_variable('w1_s', [self.s_dim, n_l1], trainable=trainable)
            w1_a = tf.get_variable('w1_a', [self.a_dim, n_l1], trainable=trainable)
            b1 = tf.get_variable('b1', [1, n_l1], trainable=trainable)
            net_0 = tf.nn.relu(tf.matmul(s, w1_s) + tf.matmul(a, w1_a)+ b1)
            net_1 = tf.layers.dense(net_0, 512, activation=tf.nn.relu, name='l2', trainable=trainable)
            net_2 = tf.layers.dense(net_1, 256, activation=tf.nn.relu, name='l3', trainable=trainable)
            return tf.layers.dense(net_2, self.s_dim, trainable=trainable)+s_linear


    def save_result(self):
        save_path = self.saver.save(self.sess, "Model/SRDDPG_Dreamer_V2.ckpt")
        print("Save to path: ", save_path)

    def render(self, mode='human'):
        screen_width = 800
        screen_height = 400

        world_width = self.x_threshold * 2
        scale = screen_width / world_width
        carty = 100  # TOP OF CART
        polewidth = 10.0
        polelen = scale * 1.0
        cartwidth = 50.0
        cartheight = 30.0

        if self.viewer is None:
            from gym.envs.classic_control import rendering
            self.viewer = rendering.Viewer(screen_width, screen_height)
            l, r, t, b = -cartwidth / 2, cartwidth / 2, cartheight / 2, -cartheight / 2
            axleoffset = cartheight / 4.0
            cart = rendering.FilledPolygon([(l, b), (l, t), (r, t), (r, b)])
            self.carttrans = rendering.Transform()
            cart.add_attr(self.carttrans)
            self.viewer.add_geom(cart)
            l, r, t, b = -polewidth / 2, polewidth / 2, polelen - polewidth / 2, -polewidth / 2
            pole = rendering.FilledPolygon([(l, b), (l, t), (r, t), (r, b)])
            pole.set_color(.8, .6, .4)
            self.poletrans = rendering.Transform(translation=(0, axleoffset))
            pole.add_attr(self.poletrans)
            pole.add_attr(self.carttrans)
            self.viewer.add_geom(pole)
            self.axle = rendering.make_circle(polewidth / 2)
            self.axle.add_attr(self.poletrans)
            self.axle.add_attr(self.carttrans)
            self.axle.set_color(.5, .5, .8)
            self.viewer.add_geom(self.axle)
            self.track = rendering.Line((0, carty), (screen_width, carty))
            self.track.set_color(0, 0, 0)
            self.viewer.add_geom(self.track)

        if self.state is None: return None

        x = self.state
        cartx = x[0] * scale + screen_width / 2.0  # MIDDLE OF CART
        self.carttrans.set_translation(cartx, carty)
        self.poletrans.set_rotation(-x[2])

        return self.viewer.render(return_rgb_array=mode == 'rgb_array')

    def close(self):
        if self.viewer:
            self.viewer.close()
            self.viewer = None


###############################  INITIALIZE  ####################################
s_dim = env.observation_space.shape[0]
a_dim = env.action_space.shape[0]
a_bound = env.action_space.high
if DREAMER:
    env_dream=Dreamer(a_dim, s_dim, a_bound)

ddpg = DDPG(a_dim, s_dim, a_bound)
###############################  TRAINING  ####################################
# env.seed(1)   # 普通的 Policy gradient 方法, 使得回合的 variance 比较大, 所以我们选了一个好点的随机种子
for i in range(MAX_EPISODES):
    iteration[0,i+1]=i+1
    s = env.reset()
    DREAM_REWARD = 0
    REAL_REWARD = 0
    for j in range(MAX_EP_STEPS):
        if RENDER:
            if DREAMER:
                env_dream.render()
            else:
                env.render()
        # Choose action
        # Add exploration noise
        a = ddpg.choose_action(s)
        a = np.clip(np.random.normal(a, var), -a_bound, a_bound)    # add randomness to action selection for exploration


        if DISTURB:
            d = ddpg.choose_disturb(s)
            d = np.random.normal(d, abs(d * 0.02 * var))  # add randomness to disturb selection for exploration
        else:
            d=[0,0]

        # RUN IN REAL IN TO GET INFORMATION OF DIE OR NOT
        # IF Dreamer_update=True, GET INFORMATION OF THE S,A,R1,S_
        # 得到的是真实的 s,a->s_ 和 r
        # 主要是判断是否游戏结束
        # r_real是s_real的函数
        s_, r, done, hit = env.step(a)             # S_=ENV(S,A), R=REWARD(S_)

        # RUN IN DREAM
        # 得到的是梦境中的s,a->s_dream 和 r_dream
        if DREAMER:
            s_dream, reward = env_dream.dream(s,a,d)
        else:
            s_dream=s_
            reward=r


        #储存s,a和梦境中的s_dream,r_dream用于DDPG的学习
        # ddpg.store_transition(s, a, (r/10)[0], s_)
        ddpg.store_transition(s, a, d,(reward / 10), s_dream)

        #DDPG LEARN
        if ddpg.pointer > MEMORY_CAPACITY:
            # Decay the action randomness
            var *= .99999
            l_q,l_r=ddpg.learn(LR_A,LR_C,LR_D,labda)

            if l_q>tol:
                if labda==0:
                    labda = 1e-8
                labda = min(labda*2,11)
                if labda==11:
                    labda = 1e-8
            if l_q<-tol:
                labda = labda/2


        # 梦境状态更新
        s = s_dream

        # 现实状态与梦境同步，用于进行下一次的现实STEP
        env.state = s_dream

        # 得到现实得分与梦境得分，帮助分析
        DREAM_REWARD += reward

        # OUTPUT TRAINING INFORMATION
        if j == MAX_EP_STEPS - 1:
            EWMA_step[0,i+1]=EWMA_p*EWMA_step[0,i]+(1-EWMA_p)*j
            EWMA_reward[0,i+1]=EWMA_p*EWMA_reward[0,i]+(1-EWMA_p)*DREAM_REWARD
            print('Episode:', i, ' Reward: %i' % int(DREAM_REWARD),'Explore: %.2f' % var,"good","EWMA_step = ",EWMA_step[0,i+1],"EWMA_reward = ",EWMA_reward[0,i+1],"LR_A = ",LR_A,'lambda',labda,'LR_D :',LR_D)
            if EWMA_reward[0,i+1]>max_ewma_reward:
                max_ewma_reward=min(EWMA_reward[0,i+1]+1000,500000)
                LR_A *= .8  # learning rate for actor
                LR_D *= .8  # learning rate for disturb
                LR_C *= .8  # learning rate for critic
                ddpg.save_result()

            if DREAM_REWARD> max_reward:
                max_reward = min(DREAM_REWARD+5000,500000)
                LR_A *= .8  # learning rate for actor
                LR_D *= .8  # learning rate for disturb
                LR_C *= .8  # learning rate for critic
                ddpg.save_result()
                print("max_reward : ",DREAM_REWARD)
            else:
                LR_A *= .99
                LR_D *= .99
                LR_C *= .99
            break
        elif done:
            EWMA_step[0,i+1]=EWMA_p*EWMA_step[0,i]+(1-EWMA_p)*j
            EWMA_reward[0,i+1]=EWMA_p*EWMA_reward[0,i]+(1-EWMA_p)*DREAM_REWARD

            if hit==1:
                print('Episode:', i, ' Reward: %i' % int(DREAM_REWARD), 'Explore: %.2f' % var, "break in : ", j, "due to ",
                      "hit the wall", "EWMA_step = ", EWMA_step[0, i + 1], "EWMA_reward = ", EWMA_reward[0, i + 1],"LR_A = ",LR_A,'lambda',labda,'LR_D :',LR_D)
            else:
                print('Episode:', i, ' Reward: %i' % int(DREAM_REWARD),'Explore: %.2f' % var, "break in : ", j, "due to",
                      "fall down","EWMA_step = ", EWMA_step[0, i + 1], "EWMA_reward = ", EWMA_reward[0, i + 1],"LR_A = ",LR_A,'lambda',labda,'LR_D :',LR_D)
            break




