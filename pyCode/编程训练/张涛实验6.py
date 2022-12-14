import random
from time import time
import numpy as np
from numpy.linalg import norm
from collections import Counter
import pandas as pd


# Counter([0, 1, 1, 2, 2, 3, 3, 4, 3, 3]).most_common(1)

def partition_sort(arr, axis):
    arr[:len(arr)] = sorted(arr, key=lambda x: x[axis])


def max_heapreplace(heap, new_node, key=lambda x: x[1]):
    heap[0] = new_node
    heap[:len(heap)] = sorted(heap, key=key, reverse=True)
    root, child = 0, 1


def max_heappush(heap, new_node, key=lambda x: x[1]):
    heap.append(new_node)
    for i in range(len(heap)):
        if i == len(heap) - 1:
            break
        if key(new_node) >= key(heap[i]):
            if len(heap) == 2:
                heap[0], heap[1] = heap[1], heap[0]
                break
            else:
                heap[i + 1:len(heap)] = heap[i:len(heap) - 1]
                heap[i] = new_node
                break


# 需要初始化一个Node类，表示KD树中的一个节点，主要包括节点本身的data值，以及其左右子节点
class KDNode(object):
    def __init__(self, data=None, label=None, left=None, right=None, axis=None, parent=None):
        self.data = data
        self.label = label
        self.left = left
        self.right = right
        self.axis = axis
        self.parent = parent


class KDTree(object):
    """kd树"""

    def __init__(self, X, y=None):
        self.root = None
        self.y_valid = False if y is None else True
        self.create(X, y)

    def create(self, X, y=None):

        def create_(X, axis, parent=None):
            n_samples = np.shape(X)[0]
            if n_samples == 0:
                return None
            mid = n_samples >> 1
            partition_sort(X, axis)
            if self.y_valid:
                kd_node = KDNode(X[mid][:-1], X[mid][-1], axis=axis, parent=parent)
            else:
                kd_node = KDNode(X[mid], axis=axis, parent=parent)
            next_axis = (axis + 1) % k_dimensions
            kd_node.left = create_(X[:mid], next_axis, kd_node)
            kd_node.right = create_(X[mid + 1:], next_axis, kd_node)
            return kd_node

        print('building kd-tree...')
        k_dimensions = np.shape(X)[1]
        if y is not None:
            X = np.hstack((np.array(X), np.array([y]).T)).tolist()
        self.root = create_(X, 0)

    def search_knn(self, point, k, dist=None):

        def search_knn_(kd_node):
            if kd_node is None:
                return
            data = kd_node.data
            distance = p_dist(data)
            if len(heap) < k:
                # 向大根堆中插入新元素
                max_heappush(heap, (kd_node, distance))
            elif distance < heap[0][1]:
                # 替换大根堆堆顶元素
                max_heapreplace(heap, (kd_node, distance))
            axis = kd_node.axis
            if abs(point[axis] - data[axis]) < heap[0][1] or len(heap) < k:
                # 当前最小超球体与分割超平面相交或堆中元素少于k个
                search_knn_(kd_node.left)
                search_knn_(kd_node.right)
            elif point[axis] < data[axis]:
                search_knn_(kd_node.left)
            else:
                search_knn_(kd_node.right)

        if self.root is None:
            raise Exception('kd-tree must be not null.')
        if k < 1:
            raise ValueError("k must be greater than 0.")
        # 默认使用2范数度量距离
        if dist is None:
            p_dist = lambda x: norm(np.array(x) - np.array(point))
        else:
            p_dist = lambda x: dist(x, point)
        heap = []
        search_knn_(self.root)
        return heap

    def search_nn(self, point, dist=None):
        return self.search_knn(point, 1, dist)[0]

    @classmethod
    def height(cls, root):
        """kd-tree深度"""
        if root is None:
            return 0
        else:
            return max(cls.height(root.left), cls.height(root.right)) + 1


class KNeighborsClassifier(object):
    """K近邻分类器"""

    def __init__(self, k, dist=None):
        """构造函数"""
        self.k = k
        self.dist = dist
        self.kd_tree = None

    def fit(self, X, y):
        """建立kd树"""
        print('fitting...')
        X = self._data_processing(X)
        self.kd_tree = KDTree(X, y)

    def predict(self, X):
        """预测类别"""
        if self.kd_tree is None:
            raise TypeError('Classifier must be fitted before predict!')
        search_knn = lambda x: self.kd_tree.search_knn(point=x, k=self.k, dist=self.dist)
        y_ptd = []
        X = (X - self.x_min) / (self.x_max - self.x_min)
        for x in X:
            y = Counter(r[0].label for r in search_knn(x)).most_common(1)[0][0]
            y_ptd.append(y)
        return y_ptd

    def score(self, X, y):
        """预测正确率"""
        y_ptd = self.predict(X)
        correct_nums = len(np.where(np.array(y_ptd) == np.array(y))[0])
        return correct_nums / len(y)

    def _data_processing(self, X):
        """数据归一化"""
        X = np.array(X)
        self.x_min = np.min(X, axis=0)
        self.x_max = np.max(X, axis=0)
        X = (X - self.x_min) / (self.x_max - self.x_min)
        return X


# 代码测试
if __name__ == '__main__':
    """测试程序正确性
    使用kd-tree和计算全部距离, 比对两种结果是否一致"""
    N = 100000
    X = [[np.random.random() * 100 for _ in range(3)] for _ in range(N)]
    kd_tree = KDTree(X)

    sup = 10
    K = 20
    for x in X[:10]:
        res1 = ([list(node[0].data) for node in kd_tree.search_knn(x, 20)])
        distances = norm(np.array(X) - np.array(x), axis=1)
        res2 = ([list(X[i]) for _, i in sorted(zip(distances, range(N)))[:20]])
        if all(x in res2 for x in res1):
            print('correct ^_^ ^_^')
        else:
            print('error >_< >_<')
    print('\n')

    """10万个样本集中查找10个实例的最近邻"""
    n = 10
    indices = random.sample(range(N), n)
    # 1、kd-tree搜索
    tm = time()
    for i, index in enumerate(indices):
        kd_tree.search_nn(X[index])
    print('kd-tree search: {}s'.format(time() - tm))

    # 2、numpy计算全部样本与新实例的距离
    tm = time()
    for i, index in enumerate(indices):
        min(norm(X - np.array(X[index]), axis=0))
    print('numpy search: {}s'.format(time() - tm))

    # 3、python循环计算距离
    tm = time()
    for i, index in enumerate(indices):
        min([norm(np.array(X[index]) - np.array(x)) for x in X])
    print('python search: {}s'.format(time() - tm))
    print()

if __name__ == '__main__':
    """模型测试"""
    X, y = [], []
    filename = "../venv/data1_KNN.xlsx"
    df = pd.read_excel(filename)
    df.head(5)
    y = df['购买意愿']
    df = df.drop(['目标客\n户编号', '购买意愿'], axis=1)
    X = np.array(df)
    y = np.array(y)

    """训练误差"""
    knc = KNeighborsClassifier(10)
    knc.fit(X, y)
    print("训练准确率: ", knc.score(X, y))  # 0.963
    print()

    """测试误差"""
    r1 = int(np.shape(X)[0] * 0.7)
    r2 = np.shape(X)[0] - r1
    X_train, X_test = X[:r1], X[-r2:]
    y_train, y_test = y[:r1], y[-r2:]
    knc = KNeighborsClassifier(10)
    knc.fit(X_train, y_train)
    print("测试准确率: ", knc.score(X_test, y_test))
