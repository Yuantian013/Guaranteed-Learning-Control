import numpy as np
import tensorflow as tf
import scipy.io as scio
## DDPG
# reader = tf.train.NewCheckpointReader('Model/SRDDPG_V3.ckpt')
# all_variables = reader.get_variable_to_shape_map()
# for key in all_variables:
#     print("tensor_name: ", key)
#
# l1=reader.get_tensor('Actor/l1/kernel')
# l2=reader.get_tensor('Actor/l2/kernel')
# l3=reader.get_tensor('Actor/l3/kernel')
# l4=reader.get_tensor('Actor/l4/kernel')
# a=reader.get_tensor('Actor/a/kernel')
# scio.savemat('ANALYSE/SRDDPG',
#              {'l1': l1,
#               'l2': l2,
#               'l3':l3,
#               'l4': l4,
#               'a': a,})
#
# # reader = tf.train.NewCheckpointReader('Model/SRDDPG_V3_COMPRESS.ckpt')
# reader = tf.train.NewCheckpointReader('Model/Group_V1.ckpt')
# all_variables = reader.get_variable_to_shape_map()
#
#
# l1=reader.get_tensor('Actor/l1/kernel')
# l2=reader.get_tensor('Actor/l2/kernel')
# l3=reader.get_tensor('Actor/l3/kernel')
# l4=reader.get_tensor('Actor/l4/kernel')
# a=reader.get_tensor('Actor/a/kernel')
# scio.savemat('ANALYSE/SRDDPG_COMPRESS',
#              {'l1_COM': l1,
#               'l2_COM': l2,
#               'l3_COM':l3,
#               'l4_COM': l4,
#               'a_COM': a,})
# reader = tf.train.NewCheckpointReader('Model/SRDDPG_V3.ckpt')
# all_variables = reader.get_variable_to_shape_map()
# for key in all_variables:
#     print("tensor_name: ", key)
#
# l1=reader.get_tensor('Actor/l1/kernel')
# l2=reader.get_tensor('Actor/l2/kernel')
# l3=reader.get_tensor('Actor/l3/kernel')
# l4=reader.get_tensor('Actor/l4/kernel')
# a=reader.get_tensor('Actor/a/kernel')
# scio.savemat('ANALYSE/SRDDPG',
#              {'l1': l1,
#               'l2': l2,
#               'l3':l3,
#               'l4': l4,
#               'a': a,})
#
reader = tf.train.NewCheckpointReader('Model/PPO.ckpt')

all_variables = reader.get_variable_to_shape_map()

for key in all_variables:
    print("tensor_name: ", key)
# l1=reader.get_tensor('Actor/l1/kernel')
# l2=reader.get_tensor('Actor/l2/kernel')
# l3=reader.get_tensor('Actor/l3/kernel')
# l4=reader.get_tensor('Actor/l4/kernel')
# a=reader.get_tensor('Actor/a/kernel')
# scio.savemat('ANALYSE/SRDDPG_COMPRESS',
#              {'l1_COM': l1,
#               'l2_COM': l2,
#               'l3_COM':l3,
#               'l4_COM': l4,
#               'a_COM': a,})
