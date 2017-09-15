NealBlog

1.环境准备：
1.1工具使用：
IntelliJ IDEA 2017.2.1 x64
JDK 1.8.0_144
Tomcat 8.0
PowerDesigner
PhotoShop CS5.1
Mysql 5.5 
Sublime text3(3126)
使用的框架：bootstrap3.3.7、Spring4.0.3、SpringMVC、mybatis3.4.4

需求：
1.管理登录退出(已移除)
2.笔记模块的编写（添加了个人文章，评论模块（友言），站内搜索）
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

2017/9/05
大幅度修改页面，删去登录模块，新增个人文章，关于我，留言模块。

2017/9/06
继续完善页面，与业务功能。

2017/9/11
增加分页功能，个人文章模块正文待完善。

2017/9/12
增加文章点击后的点击数更新,页面路径导航功能的编写,将数据库取出的文本进行处理显示
，改写目录树的查询语句排序方法（GROUP BY不显示重复的点击数，当点击数同样时会只会保留一个，使用ORDER BY 排序则不会）。

//TODO 站内搜索，。记得发布时，将8080端口的判断去掉，以及db.properties修改。评论模块

2017/9/14
完成简单站内搜索功能，将数据库源资料上传，修复了面包屑路径导航问题，修改页面观感。

//TODO 完善部分静态页面，抓取最近业界新闻用于显示在笔记右简要模块部分，完善部分资源

2017/9/15
完成“关于我”静态页面的编写，以及修复返回顶部显示效果。