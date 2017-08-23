NealBlog

环境准备：
工具使用：
IntelliJ IDEA 2017.2.1 x64
JDK 1.8.0_144
Tomcat 8.0
PowrDesigner
PhotoShop CS5.1
Mysql 5.5 
Sublime text3(3126)
使用的框架：bootstrap3.3.7、Spring4.0.3、SpringMVC、mybatis3.4.4

需求：
1.管理登录退出
2.笔记模块的编写
3.JAVAWEB的介绍，资源。

页面设计：
响应式H5页面设计，模态框登录，折叠式彩单，字体图标的使用，大部分采用bootstrap3模型。
表设计：
作者表用来存放注册用户信息：用户ID、用户名、密码、发表数、最后发表日期；用户ID为主键；
文章表用来存放所有文章信息：文章ID、用户ID、类别ID、标题、正文、点击数；文章ID为主键；
类别表用来存放所有文章类别信息：用户ID、类别ID、类别名称；用户ID、类别ID为主键；
评论表用来存放所有的评论：文章ID、评论ID、评论人名称、评论内容、作者回复内容；评论ID为主键；文章ID为外键；

功能：
2017/8/14
登录

2017/8/15
发布到网络
http://120.24.247.104/NealBlog/

2017/8/22
修改数据库连接池
