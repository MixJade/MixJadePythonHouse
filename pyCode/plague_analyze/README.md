# 爬取疫情数据并进行可视化分析

> 使用django框架

## 设置setting.py

因为`setting.py`文件里面的密钥会引起github给我发邮件 ，所以教如何设置`setting.py`文件。

1. 第14行，添加`import os`
2. 在第77-82行，屏蔽(注释)掉默认数据库
3. 在119行，加入静态页面的配置

```
STATIC_URL = '/static/'
STATICFILES_DIRS = (
    os.path.join(BASE_DIR, "static"), )
```

## 创建django项目

> 如果你连django项目都没有创建的话

先在终端下载，并创建

```
pip install django
django-admin help
django-admin startproject Hello_WORLD
```

## 启动django项目

```python manage.py runserver localhost:8000```
然后在浏览器打开`汇总网页.html`