# python学习笔记
> 关于机器学习，Python的各种文件操作，以及爬虫，django

|开发工具|开发环境(之前)|开发环境(现在)|
|:---:|:---:|:---:|
|pyCharm|python3.10|anaconda3.python3.9|

1. 里面大部分代码在学习的时候，是基于python3.10

2. 现在换成了anaconda3自带的python3.9，但还是有一些兼容问题，比如`pygame库`安装不了

---

## plague_analyze文件夹
>是基于django的项目，爬取国内疫情进行可视化分析

1. 下面有文件夹:**项目启动**，里面有**爬虫脚本.bat**，以及**项目启动.bat**
2. 注意**项目启动.bat**里面，的`call`后面的路径是anaconda3的`\Scripts\activate.bat`文件，以及anaconda3自身的文件夹。
3. 如果你已经配置好了python的环境变量，可以删去`call`及它后面的路径，不然建议更改为自己的python路径
4. 先点击爬虫脚本进行数据的爬取，再点击项目启动的脚本 
 ~~不然数据的日期对不上会导致空网页~~
5. 里面的sql脚本单纯为了规范数据库表的表头与数据格式

---

## 小鸟管道文件夹

> 是基于python3.10的pygame包进行开发， 

后面因为改为python3.9，一直安装不了pygame包，就一直放在里面。
如果要玩游戏，记得用3.10