import numpy as np
import matplotlib.pyplot as plt
import pandas as pd

"""
2、绘制散点图
读取“2022-12-1”日的国内新冠疫情数据，
绘制大陆各省级单位‘累计死亡’、‘累计确诊增量’、‘累计治愈增量’的散点图，
结果保存在当前目录，并命名为“散点图.png”。
"""

plt.rcParams['font.sans-serif'] = 'SimHei'  # 设置中文显示
plt.rcParams['axes.unicode_minus'] = False  # 设置正常显示符号
data_0 = pd.read_excel('../数据输入/data2022-12-01.xlsx', sheet_name=0)
data = data_0.drop(labels=[1, 3, 4])  # 删除港澳台
values = np.array(data)  # 数据转为np.array
arr1 = np.array(range(31))  # 删除港澳台，变成31省份
# 开始画图
plt.figure(figsize=(8, 7))  # 设置画布
plt.xlabel('省份')
plt.ylabel('人数(开方)')
# 散点图一
plt.scatter(arr1, np.sqrt(list(values[:, 2])), marker='o', c='red')
# 散点图二
plt.scatter(arr1, np.sqrt(list(values[:, 5])), marker='D', c='blue')
# 散点图三
plt.scatter(arr1, np.sqrt(list(values[:, 7])), marker='v', c='yellow')
plt.xticks(arr1, values[:, 0], rotation=90)  # rotation=90即旋转90度
plt.legend(['累计死亡', '累计确诊增量', '累计治愈增量'])  # 设置图例
plt.title('新冠12-01散点图')  # 添加图表标题
plt.savefig('../兼收并蓄/散点图.png')  # 自定义路径
plt.show()
