import numpy as np
import matplotlib.pyplot as plt

"""
1、Matplotlib 绘图
画布中包含两个子图，第一幅子图绘制Sin曲线，第二副子图绘制Cos曲线，
x轴的范围是0~4π，最后存放在当前目录下，存储的文件名为Sin-Cos.png
"""
plt.rcParams['font.sans-serif'] = 'SimHei'  # 设置中文显示
plt.rcParams['axes.unicode_minus'] = False  # 设置正常显示符号
rad = np.arange(0, np.pi * 4, 0.01)  # 设置圆周率范围
p1 = plt.figure(figsize=(8, 6), dpi=80)  # 确定画布大小
# 创建一个2行1列的子图，并开始绘制第一幅
ax1 = p1.add_subplot(2, 1, 1)  # 开始绘制第一幅
plt.title('sin曲线')  # 添加标题
plt.xlabel('rad')  # 添加x轴的名称
plt.ylabel('value')  # 添加y轴的名称
plt.xlim((0, np.pi * 4))  # 确定x轴范围
plt.ylim((-1, 1))  # 确定y轴范围
# 规定x轴刻度
plt.xticks([0, np.pi / 2, np.pi, np.pi * 1.5, np.pi * 2, np.pi * 2.5, np.pi * 3, np.pi * 3.5, np.pi * 4])
plt.yticks([-1, -0.5, 0, 0.5, 1])  # 确定y轴刻度
plt.plot(rad, np.sin(rad))  # 添加sin(x)曲线
plt.legend(['y=sin(x)'])
# 开始绘制第二幅
ax2 = p1.add_subplot(2, 1, 2)
plt.title('cos曲线')  # 添加标题
plt.xlabel('rad')  # 添加x轴的名称
plt.ylabel('value')  # 添加y轴的名称
plt.xlim((0, np.pi * 4))  # 确定x轴范围
plt.ylim((-1, 1))  # 确定y轴范围
# 规定x轴刻度
plt.xticks([0, np.pi / 2, np.pi, np.pi * 1.5, np.pi * 2, np.pi * 2.5, np.pi * 3, np.pi * 3.5, np.pi * 4])
plt.yticks([-1, -0.5, 0, 0.5, 1])  # 确定y轴刻度
plt.plot(rad, np.cos(rad))  # 添加cos(x)曲线
plt.legend(['y=cos(x)'])
plt.tight_layout()  # 调整两个子图间距
plt.savefig('../兼收并蓄/Sin-Cos.png')  # 自定义路径
plt.show()
