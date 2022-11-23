import numpy as np
import gzip

"""
定义加载数据的函数，data_path为保存gz数据的文件夹，该文件夹下有4个文件
'train-labels-idx1-ubyte.gz', 'train-images-idx3-ubyte.gz',
't10k-labels-idx1-ubyte.gz', 't10k-images-idx3-ubyte.gz'

注: MNIST文件下载地址:http://yann.lecun.com/exdb/mnist/
注: 为了美观，文件夹记得放在这个py文件夹的同级，并在pycharm中打上"已排除"
"""


def load_data(data_path):
    """
    加载MNIST数据集

    :param data_path: MNIST在电脑上的存放路径
    :return: MNIST的四个元组
    """
    # 训练集标签
    with gzip.open(data_path + 'train-labels-idx1-ubyte.gz', 'rb') as lbpath:
        y_train = np.frombuffer(lbpath.read(), np.uint8, offset=8)
        y_train_onehot = np.eye(10)[y_train]  # 转化成独热编码
    # 训练集图片
    with gzip.open(data_path + 'train-images-idx3-ubyte.gz', 'rb') as imgpath:
        x_train = np.frombuffer(
            imgpath.read(), np.uint8, offset=16).reshape(len(y_train), 28, 28)

    # 测试集标签
    with gzip.open(data_path + 't10k-labels-idx1-ubyte.gz', 'rb') as lbpath:
        y_test = np.frombuffer(lbpath.read(), np.uint8, offset=8)
        y_test_onehot = np.eye(10)[y_test]  # 转化成独热编码
    # 测试集图片
    with gzip.open(data_path + 't10k-images-idx3-ubyte.gz', 'rb') as imgpath:
        x_test = np.frombuffer(
            imgpath.read(), np.uint8, offset=16).reshape(len(y_test), 28, 28)

    return (x_train, y_train_onehot), (x_test, y_test_onehot)


def next_batch(train_data, train_target, batch_size):
    """
    随机取指定数量的数据

    :param train_data: 训练样本
    :param train_target: 训练标签
    :param batch_size: 所取数据数量
    :return: 随机数量的训练样本及其标签
    """
    # 打乱数据集
    index = [i for i in range(0, len(train_target))]
    np.random.shuffle(index)
    # 建立batch_data与batch_target的空列表
    batch_data = []
    batch_target = []
    # 向空列表加入训练集及标签
    for i in range(0, batch_size):
        batch_data.append(train_data[index[i]])
        batch_target.append(train_target[index[i]])
    return batch_data, batch_target  # 返回


if __name__ == '__main__':
    # 加载MNIST数据集
    (train_images, train_labels), (test_images, test_labels) = load_data('MNIST数据集/')
    print("训练集样本及标签", train_images.shape, train_labels.shape)
    print("测试集样本及标签", test_images.shape, test_labels.shape)
    # 随机获取数据
    batch = next_batch(train_images, train_labels, 2)
    print(batch[0])
    print(batch[1])
