import tensorflow as tf
from 加载MNIST数据集 import load_data
from 加载MNIST数据集 import next_batch

"""
本代码脱胎于书P480，但是更新了许多地方(比如几个过时的函数)
注释写的比代码多(bushi)
注: 加载MNIST数据集是自己写的，可以跳转过去看源码
注: MNIST文件下载地址:http://yann.lecun.com/exdb/mnist/
"""
tf.compat.v1.disable_eager_execution()  # 禁用急切执行，从此使用会话来获取操作结果
mnist = load_data('MNIST数据集/')  # 这个是存放MNIST的文件夹，自己写
(train_images, train_labels), (test_images, test_labels) = mnist
sess = tf.compat.v1.InteractiveSession()  # 建立一个交互式会话


def weight_variable(shape):
    """
    初始化权值

    :param shape: [宽，高，输入通道数，输出通道数]or[每个神经元训练次数，神经元个数]
    :return: 权值
    """
    initial = tf.compat.v1.truncated_normal(shape, stddev=0.1)  # 截断正态分布函数来产生权值，标准方差为0.1
    return tf.Variable(initial)  # 创建tensor类型的变量


def bias_variable(shape):
    """
    初始化偏置

    :param shape: 偏置元素个数(输出通道or神经元)
    :return: 偏置变量
    """
    initial = tf.constant(0.1, shape=shape)  # 形状为shape，数值为0.1的常量
    return tf.Variable(initial)  # 创建tensor类型的变量


def conv2d(x1, w):
    """
    卷积核

    :param x1: 图像
    :param w: 权值
    :return: 卷积结果
    """
    return tf.nn.conv2d(x1, w, strides=[1, 1, 1, 1], padding='SAME')  # 布幅为1，零值等大填充


def max_pool_2x2(x2):
    """
    池化操作

    :param x2: 卷积效果(卷积结果+偏置,再通过Relu激活)
    :return: 池化结果
    """
    return tf.nn.max_pool(x2, ksize=[1, 2, 2, 1],
                          strides=[1, 2, 2, 1], padding='SAME')  # 最大值池化，池化核形状2x2,在水平和垂直方向上步长为2


# 定义输入的参数
x = tf.compat.v1.placeholder(tf.float32, [None, 28, 28])  # 占位符定义外部输入数据
y_ = tf.compat.v1.placeholder(tf.float32, [None, 10])  # 占位符存放标签
x_image = tf.reshape(x, [-1, 28, 28, 1])  # 将输入的1x784变成28x28,-1表示样本数量不定,1表示单通道(黑白图片)

# 开始构建卷积层
W_conv1 = weight_variable([5, 5, 1, 32])  # 卷积核大小5x5,单通道,32个输出通道(即32个特征)
b_conv1 = bias_variable([32])  # 偏置变量,32个元素(每个输出通道配一个)
h_conv1 = tf.nn.relu(conv2d(x_image, W_conv1) + b_conv1)  # 卷积结果加上偏置，通过Relu激活函数，得到卷积效果(不是结果)
h_pool1 = max_pool_2x2(h_conv1)  # 为了防止过拟合，进行最大值池化

# 第二个卷积层
W_conv2 = weight_variable([5, 5, 32, 64])  # 32个输入,64个输出
b_conv2 = bias_variable([64])  # 偏置变量64个元素
h_conv2 = tf.nn.relu(conv2d(h_pool1, W_conv2) + b_conv2)
h_pool2 = max_pool_2x2(h_conv2)

# 实现全连接层
# 此时前面经过两个2x2的最大值池化,图像维度缩减1/4,变成7x7
W_fc1 = weight_variable([7 * 7 * 64, 1024])  # 图像乘64个通道(与第二个卷积输出匹配)即每个神经元训练次数,1024个神经元
b_fc1 = bias_variable([1024])  # 偏置变量1024个元素
h_pool2_flat = tf.reshape(h_pool2, [-1, 7 * 7 * 64])  # 将第二个卷积的4D矩阵变成1D,-1表示不限样本数(与样本数一致)
# matmul是矩阵乘法，即卷积层输出结果x权值矩阵+偏置变量，最后通过Relu激活
h_fc1 = tf.nn.relu(tf.matmul(h_pool2_flat, W_fc1) + b_fc1)  # 全连接层输出张量

# 实现Dropout层
# 防止全连接层过多的参数导致过拟合
keep_prob = tf.compat.v1.placeholder(tf.float32)  # 占位符
h_fc1_drop = tf.nn.dropout(h_fc1, keep_prob)  # keep_prob保留概率，为1就是全部保留

# 实现Readout层,即Softmax回归层
# 得到分类概率
W_fc2 = weight_variable([1024, 10])  # 1024对应全连接层,10个神经元分布输出每个数字的概率
b_fc2 = bias_variable([10])  # 对应10个神经元
y_conv = tf.matmul(h_fc1_drop, W_fc2) + b_fc2  # 逻辑回归

# 参数训练与模型评估
# tf.reduce_mean表示从一批(batch)数据中求均值,tf.nn.softmax_cross_entropy_with_logits为交叉熵函数(作为损失函数)
cross_entropy = tf.reduce_mean(tf.nn.softmax_cross_entropy_with_logits(labels=y_, logits=y_conv))
train_step = tf.compat.v1.train.AdamOptimizer(1e-4).minimize(cross_entropy)  # 自适应矩估计,ADAM优化器,最小化交叉熵

correct_prediction = tf.equal(tf.argmax(y_conv, 1), tf.argmax(y_, 1))
accuracy = tf.reduce_mean(tf.cast(correct_prediction, tf.float32))

sess.run(tf.compat.v1.global_variables_initializer())
for i in range(300):
    batch = next_batch(train_images, train_labels, 50)
    train_step.run(feed_dict={x: batch[0], y_: batch[1], keep_prob: 0.5})  # 训练时的Dropout层，概率为0.5
    if i % 100 == 0:
        train_accuracy = accuracy.eval(feed_dict={
            x: batch[0], y_: batch[1], keep_prob: 1.0})
        print('step %d, training accuracy %g' % (i, train_accuracy))

print('test accuracy %g' % accuracy.eval(feed_dict={
    x: test_images, y_: test_labels, keep_prob: 1.0}))

sess.close()
