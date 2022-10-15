import random
from functools import reduce


def fun01():
    """输出指定 m，n 之间所有的素数"""
    num1 = int(input("输入一个整数:"))
    num2 = int(input("再输入一个整数:"))
    if num1 > num2:
        num1, num2 = num2, num1
    for i in range(num1, num2 + 1):
        if i == 1:
            continue
        tem = 1
        for j in range(2, i):  # 判断素数
            if i % j == 0:
                tem = 0
                break
        if tem == 1:
            print(i, "is prime number")


def fun02():
    """import random"""
    ball_red_list = range(1, 34)
    ball_blue_list = range(1, 17)
    num_red = random.sample(ball_red_list, 6)
    num_blue = random.sample(ball_blue_list, 1)
    print("红球:", num_red)
    print("蓝球:", num_blue)
    print("最终结果：", num_red + num_blue)


# 三题
def fun03():
    """列表添加"""
    string_list = []
    print("输入字符放入列表，输入exit终止")
    while 1:
        temp = input("请输入字符串：")
        if temp == 'exit':
            break
        string_list.append(temp)
    print("最终列表：\n", string_list)


# 第四题
# 创建一个函数，遍历去除给定列表中中相邻且重复的元素(只保留一个)后，打印输出结果。
# 说明：输入参数为 l1=[1,2,3,4,4,4,4,4,4,5,6,6,8,8,12,12,12,12,13,13]，操作后，
# 保证原有整体排序不变，仅处理相邻且重复的元素
def fun04(li01):
    """去除列表中重复元素"""
    length = len(li01)
    temp = li01[0]
    i = 1
    while i < length:
        if temp == li01[i]:
            li01.remove(li01[i])
            length -= 1
        else:
            temp = li01[i]
            i = i + 1
    return li01


# 第五题
# l2=[1,3,6,8,10,11,17]，请仅使用map,reduce,filter对l1依次进行如下三次操作(使用匿名函数)
# a.剔除掉所有的偶数后打印;
# b.对剩下的数字每个数字进行平方后打印;
# c.对数组求和后打印


def fun05():
    """from functools import reduce"""
    li01 = [1, 3, 6, 8, 10, 11, 17]
    # a
    li01 = list(filter(lambda x: x % 2 == 1, li01))  # 使用匿名函数
    print(li01)
    # b
    li01 = list(map(lambda x: x ** 2, li01))  # 使用匿名函数
    print(li01)
    # c
    li01 = reduce(lambda x, y: x + y, li01)  # 使用匿名函数
    print(li01)
    print("收工")


# 第六题
# - 1. 读取zen.txt文件，并使用split()函数以空白为字符串分隔得到文件中所有的单词。
# - 2. 完成一个名为mimic_dict的函数：以出现在文件中的单词(全都小写化)为键(key)，
# 文件中所有紧跟在单词后面的一个单词组成的列表为值(value)。
def fun06():
    """读取文件，分割单词，化为字典"""
    with open(r'zen.txt', 'r') as file:
        string = file.read()
    list1 = string.split()
    print("以空白为字符串分隔后：\n", list1)
    result = mimic_dict(list1)
    print(result)
    print("End of the program")


def mimic_dict(list0):
    import numpy
    list0 = list(map(lambda x: x.lower(), list0))  # 转化为小写
    list0 = list(map(lambda x: x.strip('*-.,'), list0))  # 去除其余的符号
    # print("处理后的链表：\n", list0)
    key = numpy.unique(list0)  # 去重复
    value = []
    for item1 in key:
        temp = []
        for index, item2 in enumerate(list0):
            if item1 == item2 and index + 1 < len(list0):
                temp.append(list0[index + 1])
        value.append(temp)
    dictionary = dict(zip(key, value))
    # print("key:\n", key)
    # print("value:\n", value)
    print("dictionary:\n", dictionary)
    return dictionary


if __name__ == '__main__':
    fun01()
    fun02()
    fun03()
    li02 = [1, 2, 3, 4, 4, 4, 4, 4, 4, 5, 6, 6, 8, 8, 12, 12, 12, 12, 13, 13]
    print(fun04(li02))
    fun05()
    # fun06()
