#coding:utf-8
__author__ = "ila"
from django.db import models

from .model import BaseModel

from datetime import datetime



class yuangong(BaseModel):
    __doc__ = u'''yuangong'''
    __tablename__ = 'yuangong'

    __loginUser__='yuangonggonghao'


    __authTables__={}
    __authPeople__='是'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __loginUserColumn__='yuangonggonghao'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    yuangonggonghao=models.CharField ( max_length=255,null=False,unique=True, verbose_name='员工工号' )
    mima=models.CharField ( max_length=255,null=False, unique=False, verbose_name='密码' )
    yuangongxingming=models.CharField ( max_length=255,null=False, unique=False, verbose_name='员工姓名' )
    touxiang=models.CharField ( max_length=255, null=True, unique=False, verbose_name='头像' )
    xingbie=models.CharField ( max_length=255, null=True, unique=False, verbose_name='性别' )
    nianling=models.IntegerField  (  null=True, unique=False, verbose_name='年龄' )
    shouji=models.CharField ( max_length=255, null=True, unique=False, verbose_name='手机' )
    youxiang=models.CharField ( max_length=255, null=True, unique=False, verbose_name='邮箱' )
    '''
    yuangonggonghao=VARCHAR
    mima=VARCHAR
    yuangongxingming=VARCHAR
    touxiang=VARCHAR
    xingbie=VARCHAR
    nianling=Integer
    shouji=VARCHAR
    youxiang=VARCHAR
    '''
    class Meta:
        db_table = 'yuangong'
        verbose_name = verbose_name_plural = '员工'
class yonghu(BaseModel):
    __doc__ = u'''yonghu'''
    __tablename__ = 'yonghu'

    __loginUser__='yonghuzhanghao'


    __authTables__={}
    __authPeople__='是'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __loginUserColumn__='yonghuzhanghao'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    yonghuzhanghao=models.CharField ( max_length=255,null=False,unique=True, verbose_name='用户账号' )
    mima=models.CharField ( max_length=255,null=False, unique=False, verbose_name='密码' )
    yonghuxingming=models.CharField ( max_length=255,null=False, unique=False, verbose_name='用户姓名' )
    touxiang=models.CharField ( max_length=255, null=True, unique=False, verbose_name='头像' )
    xingbie=models.CharField ( max_length=255, null=True, unique=False, verbose_name='性别' )
    nianling=models.IntegerField  (  null=True, unique=False, verbose_name='年龄' )
    shouji=models.CharField ( max_length=255, null=True, unique=False, verbose_name='手机' )
    youxiang=models.CharField ( max_length=255, null=True, unique=False, verbose_name='邮箱' )
    '''
    yonghuzhanghao=VARCHAR
    mima=VARCHAR
    yonghuxingming=VARCHAR
    touxiang=VARCHAR
    xingbie=VARCHAR
    nianling=Integer
    shouji=VARCHAR
    youxiang=VARCHAR
    '''
    class Meta:
        db_table = 'yonghu'
        verbose_name = verbose_name_plural = '用户'
class cheliangxinxi(BaseModel):
    __doc__ = u'''cheliangxinxi'''
    __tablename__ = 'cheliangxinxi'



    __authTables__={'yonghuzhanghao':'yonghu',}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    cheliangmingcheng=models.CharField ( max_length=255, null=True, unique=False, verbose_name='车辆名称' )
    chepaihaoma=models.CharField ( max_length=255, null=True, unique=False, verbose_name='车牌号码' )
    cheliangpinpai=models.CharField ( max_length=255, null=True, unique=False, verbose_name='车辆品牌' )
    tupian=models.CharField ( max_length=255, null=True, unique=False, verbose_name='图片' )
    yanse=models.CharField ( max_length=255, null=True, unique=False, verbose_name='颜色' )
    goumaishijian=models.DateField   (  null=True, unique=False, verbose_name='购买时间' )
    paifangliang=models.CharField ( max_length=255, null=True, unique=False, verbose_name='排放量' )
    jiage=models.CharField ( max_length=255, null=True, unique=False, verbose_name='价格' )
    yonghuzhanghao=models.CharField ( max_length=255, null=True, unique=False, verbose_name='用户账号' )
    yonghuxingming=models.CharField ( max_length=255, null=True, unique=False, verbose_name='用户姓名' )
    shouji=models.CharField ( max_length=255, null=True, unique=False, verbose_name='手机' )
    '''
    cheliangmingcheng=VARCHAR
    chepaihaoma=VARCHAR
    cheliangpinpai=VARCHAR
    tupian=VARCHAR
    yanse=VARCHAR
    goumaishijian=Date
    paifangliang=VARCHAR
    jiage=VARCHAR
    yonghuzhanghao=VARCHAR
    yonghuxingming=VARCHAR
    shouji=VARCHAR
    '''
    class Meta:
        db_table = 'cheliangxinxi'
        verbose_name = verbose_name_plural = '车辆信息'
class shouhoufuwu(BaseModel):
    __doc__ = u'''shouhoufuwu'''
    __tablename__ = 'shouhoufuwu'



    __authTables__={'yonghuzhanghao':'yonghu',}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='是'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    cheliangmingcheng=models.CharField ( max_length=255, null=True, unique=False, verbose_name='车辆名称' )
    chepaihaoma=models.CharField ( max_length=255, null=True, unique=False, verbose_name='车牌号码' )
    cheliangpinpai=models.CharField ( max_length=255, null=True, unique=False, verbose_name='车辆品牌' )
    paifangliang=models.CharField ( max_length=255, null=True, unique=False, verbose_name='排放量' )
    yonghuzhanghao=models.CharField ( max_length=255, null=True, unique=False, verbose_name='用户账号' )
    yonghuxingming=models.CharField ( max_length=255, null=True, unique=False, verbose_name='用户姓名' )
    shouji=models.CharField ( max_length=255, null=True, unique=False, verbose_name='手机' )
    yuyueriqi=models.DateField   (  null=True, unique=False, verbose_name='预约日期' )
    fuwuxiangmu=models.CharField ( max_length=255, null=True, unique=False, verbose_name='服务项目' )
    sfsh=models.CharField ( max_length=255, null=True, unique=False,default='否', verbose_name='是否审核' )
    shhf=models.TextField   (  null=True, unique=False, verbose_name='审核回复' )
    '''
    cheliangmingcheng=VARCHAR
    chepaihaoma=VARCHAR
    cheliangpinpai=VARCHAR
    paifangliang=VARCHAR
    yonghuzhanghao=VARCHAR
    yonghuxingming=VARCHAR
    shouji=VARCHAR
    yuyueriqi=Date
    fuwuxiangmu=VARCHAR
    sfsh=VARCHAR
    shhf=Text
    '''
    class Meta:
        db_table = 'shouhoufuwu'
        verbose_name = verbose_name_plural = '售后服务'
class shouhouanpai(BaseModel):
    __doc__ = u'''shouhouanpai'''
    __tablename__ = 'shouhouanpai'



    __authTables__={'yonghuzhanghao':'yonghu','yuangonggonghao':'yuangong',}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    cheliangmingcheng=models.CharField ( max_length=255, null=True, unique=False, verbose_name='车辆名称' )
    chepaihaoma=models.CharField ( max_length=255, null=True, unique=False, verbose_name='车牌号码' )
    cheliangpinpai=models.CharField ( max_length=255, null=True, unique=False, verbose_name='车辆品牌' )
    paifangliang=models.CharField ( max_length=255, null=True, unique=False, verbose_name='排放量' )
    yonghuzhanghao=models.CharField ( max_length=255, null=True, unique=False, verbose_name='用户账号' )
    yonghuxingming=models.CharField ( max_length=255, null=True, unique=False, verbose_name='用户姓名' )
    shouji=models.CharField ( max_length=255, null=True, unique=False, verbose_name='手机' )
    yuyueriqi=models.DateField   (  null=True, unique=False, verbose_name='预约日期' )
    yuangonggonghao=models.CharField ( max_length=255, null=True, unique=False, verbose_name='员工工号' )
    yuangongxingming=models.CharField ( max_length=255, null=True, unique=False, verbose_name='员工姓名' )
    fuwuxiangmu=models.CharField ( max_length=255, null=True, unique=False, verbose_name='服务项目' )
    fuwujiage=models.FloatField   (  null=True, unique=False, verbose_name='服务价格' )
    crossuserid=models.BigIntegerField  (  null=True, unique=False, verbose_name='跨表用户id' )
    crossrefid=models.BigIntegerField  (  null=True, unique=False, verbose_name='跨表主键id' )
    '''
    cheliangmingcheng=VARCHAR
    chepaihaoma=VARCHAR
    cheliangpinpai=VARCHAR
    paifangliang=VARCHAR
    yonghuzhanghao=VARCHAR
    yonghuxingming=VARCHAR
    shouji=VARCHAR
    yuyueriqi=Date
    yuangonggonghao=VARCHAR
    yuangongxingming=VARCHAR
    fuwuxiangmu=VARCHAR
    fuwujiage=Float
    crossuserid=BigInteger
    crossrefid=BigInteger
    '''
    class Meta:
        db_table = 'shouhouanpai'
        verbose_name = verbose_name_plural = '售后安排'
class wanchengshouhou(BaseModel):
    __doc__ = u'''wanchengshouhou'''
    __tablename__ = 'wanchengshouhou'



    __authTables__={'yonghuzhanghao':'yonghu','yuangonggonghao':'yuangong',}
    __authPeople__='否'#用户表，表属性loginUserColumn对应的值就是用户名字段，mima就是密码字段
    __sfsh__='否'#表sfsh(是否审核，”是”或”否”)字段和sfhf(审核回复)字段，后台列表(page)的操作中要多一个”审核”按钮，点击”审核”弹出一个页面，包含”是否审核”和”审核回复”，点击确定调用update接口，修改sfsh和sfhf两个字段。
    __authSeparate__='否'#后台列表权限
    __thumbsUp__='否'#表属性thumbsUp[是/否]，新增thumbsupnum赞和crazilynum踩字段
    __intelRecom__='否'#智能推荐功能(表属性：[intelRecom（是/否）],新增clicktime[前端不显示该字段]字段（调用info/detail接口的时候更新），按clicktime排序查询)
    __browseClick__='否'#表属性[browseClick:是/否]，点击字段（clicknum），调用info/detail接口的时候后端自动+1）、投票功能（表属性[vote:是/否]，投票字段（votenum）,调用vote接口后端votenum+1
    __foreEndListAuth__='否'#前台列表权限foreEndListAuth[是/否]；当foreEndListAuth=是，刷的表新增用户字段userid，前台list列表接口仅能查看自己的记录和add接口后台赋值userid的值
    __foreEndList__='否'#表属性[foreEndList]前台list:和后台默认的list列表页相似,只是摆在前台,否:指没有此页,是:表示有此页(不需要登陆即可查看),前要登:表示有此页且需要登陆后才能查看
    __isAdmin__='否'#表属性isAdmin=”是”,刷出来的用户表也是管理员，即page和list可以查看所有人的考试记录(同时应用于其他表)
    addtime = models.DateTimeField(auto_now_add=False, verbose_name=u'创建时间')
    cheliangmingcheng=models.CharField ( max_length=255, null=True, unique=False, verbose_name='车辆名称' )
    chepaihaoma=models.CharField ( max_length=255, null=True, unique=False, verbose_name='车牌号码' )
    cheliangpinpai=models.CharField ( max_length=255, null=True, unique=False, verbose_name='车辆品牌' )
    yonghuzhanghao=models.CharField ( max_length=255, null=True, unique=False, verbose_name='用户账号' )
    yonghuxingming=models.CharField ( max_length=255, null=True, unique=False, verbose_name='用户姓名' )
    shouji=models.CharField ( max_length=255, null=True, unique=False, verbose_name='手机' )
    yuangonggonghao=models.CharField ( max_length=255, null=True, unique=False, verbose_name='员工工号' )
    yuangongxingming=models.CharField ( max_length=255, null=True, unique=False, verbose_name='员工姓名' )
    fuwuxiangmu=models.CharField ( max_length=255, null=True, unique=False, verbose_name='服务项目' )
    fuwujiage=models.CharField ( max_length=255, null=True, unique=False, verbose_name='服务价格' )
    fuwujieguo=models.TextField   (  null=True, unique=False, verbose_name='服务结果' )
    baogaofujian=models.CharField ( max_length=255, null=True, unique=False, verbose_name='报告附件' )
    crossuserid=models.BigIntegerField  (  null=True, unique=False, verbose_name='跨表用户id' )
    crossrefid=models.BigIntegerField  (  null=True, unique=False, verbose_name='跨表主键id' )
    ispay=models.CharField ( max_length=255, null=True, unique=False,default='未支付', verbose_name='是否支付' )
    '''
    cheliangmingcheng=VARCHAR
    chepaihaoma=VARCHAR
    cheliangpinpai=VARCHAR
    yonghuzhanghao=VARCHAR
    yonghuxingming=VARCHAR
    shouji=VARCHAR
    yuangonggonghao=VARCHAR
    yuangongxingming=VARCHAR
    fuwuxiangmu=VARCHAR
    fuwujiage=VARCHAR
    fuwujieguo=Text
    baogaofujian=VARCHAR
    crossuserid=BigInteger
    crossrefid=BigInteger
    ispay=VARCHAR
    '''
    class Meta:
        db_table = 'wanchengshouhou'
        verbose_name = verbose_name_plural = '完成售后'
