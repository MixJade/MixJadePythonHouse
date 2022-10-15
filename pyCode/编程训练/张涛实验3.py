# 实验三
# 第一题，划船不用桨
from collections import Counter


def direction_pred():
    p1 = input("输入两个正整数: ")
    p1 = list(p1.split())
    p2 = input("输入另外两个正整数: ")
    p2 = list(p2.split())
    n = int(input("输入一个时间: "))
    # 输入风向
    direction = list()
    for i in range(0, n):
        direction.append(input("输入接下来所有风向： "))
    # 判断方位
    dx = int(p2[0]) - int(p1[0])
    dy = int(p2[1]) - int(p1[1])
    print("到达目的地需要的时间如下：")
    # 计算各方向的数量
    a = dict(Counter(direction))
    if dx == 0:
        if dy > 0:  # N
            if a['N'] >= dy:
                print(dy)
            else:
                print(-1)
        else:  # S
            if a['S'] >= abs(dy):
                print(abs(dy))
            else:
                print(-1)
    elif dx > 0:
        if dy == 0:  # E
            if a['E'] >= dx:
                print(dx)
            else:
                print(-1)
        elif dy > 0:  # E N
            if a["E"] >= dx and a['N'] >= dy:
                print(dx + dy)
            else:
                print(-1)
        else:
            if a['E'] >= dx and a['N'] >= abs(dy):
                print(dx + abs(dy))
            else:
                print(-1)
    else:
        if dy == 0:  # W
            if a['W'] >= abs(dx):
                print(abs(dx))
            else:
                print(-1)
        elif dy > 0:  # W N
            if a['W'] >= abs(dx) and a['N'] >= dy:
                print(abs(dx) + dy)
            else:
                print(-1)
        else:  # W S
            if a['W'] >= abs(dx) and a['S'] >= abs(dy):
                print(abs(dx) + abs(dy))
            else:
                print(-1)


# 第二题
class Car:
    def __init__(self, name, brand):
        self.name = name
        self.brand = brand

    def show(self):
        print(f"汽车的名称是 {self.name}， 品牌为 {self.brand}")

    def run(self):
        print(f"汽车{self.name}跑起来了")


car = Car("A", "M")
car.show()
car.run()


# 第三题
class Car:
    def __init__(self, name, brand, max_people):
        self.name = name
        self.brand = brand
        self.number_of_people = 0
        self.max_people = max_people

    def show(self):
        print(f"汽车的名称是 {self.name}， 品牌为 {self.brand}")

    def run(self):
        print(f"汽车{self.name}跑起来了")

    def set_people(self, num):
        if num < self.max_people:
            self.number_of_people = num
        else:
            self.number_of_people = self.max_people
            print(f'现有{self.number_of_people}在车上')

    def increase_people(self):
        if self.number_of_people < self.max_people:
            self.number_of_people += 1
            print(f'新增 1 人，现有{self.number_of_people}人在车上')
        else:
            print(self.max_people), print('满了')

    def reduce_people(self):
        if self.number_of_people > 0:
            self.number_of_people -= 1
            print(f'减少 1 人，现有{self.number_of_people}人在车上')
        else:
            print(f'车上没人')


car = Car("A", "M", 10)
car.show()
car.run()
car.set_people(5)
car.reduce_people()
car.increase_people()


# 第四题
def func(x):
    if x == 1:
        return 1
    elif x == 2:
        return 5
    else:
        return func(x - 1) + 4 * (x - 1)


print(func(20))
a = int(input("第几行: "))
b = int(input("第几列: "))
c = a + b - 1  # 第几斜排
n = 0
for i in range(1, c + 1):
    n += i  # c 斜排的最后一个数
if c % 2 != 0:  # 奇偶性
    ans = n - a + 1  # 等于最大的数减行数加 1
else:
    ans = n - b + 1  # 等于最大的数减列数加 1
print(ans)
