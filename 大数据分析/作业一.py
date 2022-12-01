"""
某年级有若干名同学，
如果每9人一排会多出 5人，
如果每7个人一排会多出1人，
如果每5人一排会多出2人，
问这个年级至少有多少人？
"""

# x = 0
# while True:
#     x = x + 1
#     if (x % 9 == 5) & (x % 7 == 1) & (x % 5 == 2):
#         break
# print("这个班有 %d 人" % x)

"""
3、编写程序模拟猜数游戏。程序设定两个整数，一个数m表示要猜测的数的最大值，一个数n表示最多可以猜测的次数，m和n的值可以根据需要调整。
（1）系统运行时首先生成一个1~m之间随机整数；
（2）然后提示用户进行猜测并根据用户输入进行必要的提示（猜对了、猜大了、猜小了）；
（3）如果猜对则提前结束程序；如果猜错，提示用户继续；如果次数用完仍没有猜对，提示游戏结束并给出正确答案。
"""
# from random import randint
#
#
# def guess_number(max_num, max_time):
#     print("开始踹数字游戏,最大值是 %d,最多踹 %d 次" % (max_num, max_time))
#     value = randint(1, max_num)  # 随机生成一个整数
#     for i in range(max_time):
#         prompt = '请输入您猜的数字:' if i == 0 else '请再猜一次:'
#         try:
#             x = int(input(prompt))  # 防止不是整数
#         except:
#             print('必须输入整形数，且在数字1和 %d 之间' % max_num)
#         else:
#             if x == value:
#                 print('猜对了!!!!! ')
#                 break
#             elif x > value:
#                 print('猜大了！')
#             else:
#                 print('猜小了！')
#     else:
#         print('游戏结束，您失败了！\n 答案是:', value)
#
#
# # 控制最大值和次数
# guess_number(12, 5)

"""
4、模拟一个简单的成绩输入程序。要求如下。
（1）学生信息至少包含：学号、姓名、性别、成绩；
（2）以自己和其他至少2个同学真实信息进行输入，成绩自定。
（3）把所有信息保存到文件，文件名：student.txt 。
（4）然后读出student.txt中的信息。
"""


class Student:
    """
    封装学生类
    """

    def __init__(self):
        self.ID = ''
        self.name = ''
        self.sex = ''
        self.grade = 0


def add(stulist01, stu):
    """
    添加一个学生

    :param stulist01: 学生列表
    :param stu: 单个学生
    """
    stulist01.append(stu)
    file_object = open(file, "a", encoding='utf-8')
    file_object.write(stu.ID)
    file_object.write(" ")
    file_object.write(stu.name)
    file_object.write(" ")
    file_object.write(stu.sex)
    file_object.write(" ")
    file_object.write(str(stu.grade))
    file_object.write("\n")
    file_object.close()
    print("保存成功！")


def display(stulist02):  # 显示所有学生信息
    for item in stulist02:
        print("学号:%s 姓名:%s 性别:%s 成绩:%s" % (item.ID, item.name, item.sex, item.grade))


def init(stulist03):
    """
    初始化函数
    """
    file_object = open(file, 'w+', encoding='utf-8')
    for line in file_object:
        stu = Student()
        line = line.strip("\n")
        s = line.split(" ")
        stu.ID = s[0]
        stu.name = s[1]
        stu.sex = s[2]
        stu.grade = s[3]
        stulist03.append(stu)
    file_object.close()
    print("初始化成功！")
    main()


def main():
    while True:
        print("输入1开始插入，输入2展示所有学生,输入0终止")
        choose = input("请输入你的选择：")
        if choose == "1":
            stu = Student()
            stu.ID = input("请输入学生的学号")
            stu.name = input("请输入学生的姓名")
            stu.sex = input("请输入学生的性别")
            stu.grade = input("请输入学生的成绩")
            add(stulist, stu)

        if choose == '2':
            display(stulist)

        if choose == '0':
            break


if __name__ == '__main__':
    file = '../兼收并蓄/students.txt'
    stulist = []
    init(stulist)
