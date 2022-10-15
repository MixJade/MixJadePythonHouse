# 爬取疫情数据并进行可视化分析

> 使用django框架

因为`setting.py`文件里面的密钥会引起github给我发邮件 ，所以教如何设置`setting.py`文件。

1. 第14行，添加`import os`
2. 在119行，加入静态页面的配置

```
STATIC_URL = '/static/'
STATICFILES_DIRS = (
    os.path.join(BASE_DIR, "static"), )
```