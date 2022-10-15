import requests
from lxml import etree
import xlwt

ua = {'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; WOW64) \
AppleWebKit/537.36 (KHTML, like Gecko) \\Chrome/86.0.4240.198 Safari/537.36"'}


def roledata():
    print("开始爬取原神角色数据")
    url = "https://bbs.mihoyo.com/ys/obc/channel/map/189/25?bbs_presentation_style=no_header"
    # url = "https://api-static.mihoyo.com/common/blackboard/ys_obc/v1/home/content/list?app_sn=ys_obc&channel_id=189"
    yuanshen = requests.get(url, headers=ua)
    yuanshen.encoding = "utf-8"
    yuanshen01 = yuanshen.text
    yuanshen02 = etree.HTML(yuanshen01)
    role = yuanshen02.xpath('//div[@class="collection-avatar__title"]/text()')
    wangzhi = yuanshen02.xpath('//a[@class="collection-avatar__item"]/@href')
    print("一共有" + str(len(role)) + "个角色，角色数据如下：")

    roleall = []

    url02 = "https://bbs.mihoyo.com"
    for i in range(len(wangzhi)):
        roleurl = url02 + wangzhi[i]
        rs02 = requests.get(roleurl, headers=ua)
        rs02.encoding = "utf-8"
        body02 = rs02.text
        html02 = etree.HTML(body02)
        rolefour = html02.xpath(
            '//ul[@class="obc-tmpl__switch-list"]/li[@data-index="7"]/table/tbody/tr/td/div/span/text()')
        leixing = html02.xpath(
            '//ul[@class="obc-tmpl__switch-list"]/li[@data-index="7"]/table/tbody/tr/td[@class="h3"]/text()')
        stars = len(html02.xpath('//div[@class="obc-tmp-character__mobile--stars"]/i'))
        qita = html02.xpath('//div[@class="obc-tmp-character__value"]/text()')
        xiazui = html02.xpath('//div[@data-part="skill"]/ul[2]/li[1]/div/div/table/tbody/tr[last()-1]/td[11]/text()')
        xiazui[0] = xiazui[0][19:-17]
        lifedata = str(rolefour[0])
        for live in lifedata:
            if live == ',':
                lifedata = lifedata.replace(live, '')
        rolefour[0] = lifedata
        rolefour[2] = rolefour[2][7:10]
        rolefour.insert(3, leixing[4])
        rolefour.append(stars)
        rolefour.append(qita[0])
        rolefour.append(qita[3])
        rolefour.append(qita[5])
        rolefour.append(xiazui[0])
        rolefour.insert(0, role[i])
        roleall.append(rolefour)

    print("每道数据" + str(len(roleall[0])) + "个词条\n" + str(roleall))
    roledataxls(roleall)


def roledataxls(roleall):
    print("开始画表，表名：sy原神角色数据")
    workbook = xlwt.Workbook(encoding='utf-8')
    worksheet = workbook.add_sheet("roledata")
    worksheet.write(0, 0, label='ID')
    worksheet.write(0, 1, label='名字')
    worksheet.write(0, 2, label='生命')
    worksheet.write(0, 3, label='防御')
    worksheet.write(0, 4, label='攻击')
    worksheet.write(0, 5, label='突破类型')
    worksheet.write(0, 6, label='突破数值')
    worksheet.write(0, 7, label='星级')
    worksheet.write(0, 8, label='生日')
    worksheet.write(0, 9, label='武器类型')
    worksheet.write(0, 10, label='称号')
    worksheet.write(0, 11, label='下落伤害')

    for i in range(len(roleall)):
        worksheet.write(i + 1, 0, label=i)
        for j in range(len(roleall[0])):
            worksheet.write(i + 1, j + 1, label=roleall[i][j])
    workbook.save(r"sy原神角色数据.xls")


def saberdata():
    print("开始爬取原神武器数据")
    url = "https://bbs.mihoyo.com/ys/obc/channel/map/189/5?bbs_presentation_style=no_header"
    yuanshen = requests.get(url, headers=ua)
    yuanshen.encoding = "utf-8"
    yuanshen01 = yuanshen.text
    yuanshen02 = etree.HTML(yuanshen01)
    sabername = yuanshen02.xpath('//div[@class="collection-avatar__title"]/text()')
    wangzhi = yuanshen02.xpath('//a[@class="collection-avatar__item"]/@href')
    print("一共有" + str(len(sabername)) + "把武器，武器数据如下")
    saberall = []

    url02 = "https://bbs.mihoyo.com"
    for i in range(len(sabername)):
        sabernameurl = url02 + wangzhi[i]
        rs02 = requests.get(sabernameurl, headers=ua)
        rs02.encoding = "utf-8"
        body02 = rs02.text
        html02 = etree.HTML(body02)
        citiao = html02.xpath('//div[@style="order: 2;"]/div/ul[2]/li[last()]/table/tbody/tr/td/ul/li/text()')
        citiao[0] = int(citiao[0][6:])
        if len(citiao) < 2:
            citiao.append("无")
        maxlevel = html02.xpath('//div[@style="order: 2;"]/div/ul[1]/li[last()]/text()')
        maxlevel[0] = maxlevel[0][7:-5]
        leixing = html02.xpath('//div[@style="order: 0;"]/div/table/tbody/tr[2]/td/text()')
        if len(str(leixing)) > 9:
            leixing[0] = leixing[0][5:]
        star = len(html02.xpath('//div[@style="order: 0;"]/div/table/tbody/tr[3]/td/i'))
        tuponeed = html02.xpath('//div[@style="order: 2;"]//span[@class="obc-tmpl__icon-text"]/text()')
        tuponeed = tuponeed[-3:]
        citiao.insert(0, sabername[i])
        citiao.insert(1, star)
        citiao.append(maxlevel[0])
        citiao.append(leixing[0])
        citiao.append(tuponeed[0])
        citiao.append(tuponeed[1])
        citiao.append(tuponeed[2])
        saberall.append(citiao)

    print("每道数据" + str(len(saberall[0])) + "个词条\n" + str(saberall))
    saberdataxls(saberall)


def saberdataxls(saberall):
    print("开始画表，表名：sy原神武器数据")
    workbook = xlwt.Workbook(encoding='utf-8')
    worksheet = workbook.add_sheet("saberdata")
    worksheet.write(0, 0, label='ID')
    worksheet.write(0, 1, label='武器名')
    worksheet.write(0, 2, label='星级')
    worksheet.write(0, 3, label='最大白值')
    worksheet.write(0, 4, label='副词条')
    worksheet.write(0, 5, label='最大等级')
    worksheet.write(0, 6, label='武器类型')
    worksheet.write(0, 7, label='突破材料')
    worksheet.write(0, 8, label='突破其二')
    worksheet.write(0, 9, label='突破其三')

    for i in range(len(saberall)):
        worksheet.write(i + 1, 0, label=i)
        for j in range(len(saberall[0])):
            worksheet.write(i + 1, j + 1, label=saberall[i][j])
    workbook.save(r"sy原神武器数据.xls")


if __name__ == "__main__":
    roledata()
    saberdata()
