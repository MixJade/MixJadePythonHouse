# 第一题
def circle():
    circle_sum: int = 0
    for circle_i in range(1, 11):
        circle_tem = 1
        for j in range(1, circle_i + 1):
            circle_tem = circle_tem * j
        circle_sum = circle_sum + circle_tem
    print("结果是：", circle_sum)


# 二题
def attempt02():
    m = int(input("请输入整数 m："))
    n = int(input("请输入整数 n："))
    if m < n:
        m, n = n, m
    while 1:
        r = m % n
        if r == 0:
            print("最大公约数是：", n)
            break
        else:
            m, n = n, r


# 第三题
def attempt03():
    str001 = input("请输入字符串：")
    letters = 0
    space = 0
    number = 0
    other = 0
    for i in range(0, len(str001)):
        if 'a' <= str001[i] <= 'z':
            letters += 1
        elif str001[i] == ' ':
            space += 1
        elif '0' <= str001[i] <= '9':
            number += 1
        else:
            other += 1
    print("字母 = %d, 空格 = %d, 数字 = %d, 其他字符 = %d" % (letters, space, number, other))


# 第四题
def attempt04():
    n = 9
    a = 6
    sn = 0
    for i in range(1, n + 1):
        tem = 0
        for j in range(0, i):
            tem += a * 10 ** j
        sn += tem
    print("Sn =", sn)


# 第五题
def attempt05():
    for i in range(100, 1000):
        if (int(i // 100)) ** 3 + (int((i % 100) // 10)) ** 3 + (i % 10) ** 3 == i:
            print(i)
    # 第六题
    for i in range(6, 1001):
        str001 = ''
        sum02 = 0
        for j in range(1, i):
            if i % j == 0:
                sum02 += j
                str001 += '%d ' % j
                if sum02 == i:
                    print("%d its factors are" % i, end=' ')
                    print(str001)


# 第七题：
def attempt07():
    sum01 = 0
    a = 2
    b = 1
    for n in range(0, 20):
        sum01 += a / b
        b = a
        a = a + b
    print("前20项之和为：", sum01)
