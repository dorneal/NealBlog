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
富文本编辑器：wangEditor v3.0.9(已经替换掉),summernote 0.8

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
完成“关于我”静态页面的编写，以及修复返回顶部显示效果，增加404错误页面，修改地址栏风格，添加了静态文件解析配置
将8080端口配置成了80端口。

2017/9/18
添加后台博主管理，以及sql语句的更新,添加了删除模块。

//TODO 富文本编辑器，以及对文章的更新与删除，还有发布

2017/9/19
添加发布页面，编辑页面以及各类页面查询功能,解决分页，跳转问题。

//TODO insert语句跟更新语句

//最大问题：1).页面充斥大量的EL,JSTL表达式，难以阅读
            2).大量的文字表述，缺少图片，难以解决图片的自动查找显示
            
2017/9/20
解决发布与更新文章，解决文章标题重复问题，解决博主后台管理搜索问题

截止2017/9/20，基本功能已完全实现，后续的更新敬请期待。。。（已将表文件更新上传）

线上测试问题：
笔记页面搜索未启用（已修复）

2017/9/22
修复发布文章，笔记发布的问题，以及页面路径导航问题，更新code样式，添加笔记左侧栏点击跳转功能，增加分享功能，将搜索框样式更改
增加友情链接,更改数据源配置，增加微信公众号以及个人微信二维码
发布项目到服务器时：需要将路径导航的项目名去掉

//TODO 将备案链接在新的窗口打开，将搜索框调短点

2017/9/23
增加免责声明,meta标签的SEO优化

2017/9/24
解决域名被恶意解析，解决上传不了图片，将数据库text类型字段改成longtext类型字段

2017/9/27
增加拦截器，阻止未登录访问后台。更换富文本编辑器使用summernote富文本编辑器。
百度分享插件，畅言评论插件，以及百度验证插件，自动推送插件，增加防止恶意解析代码。
//TODO 注意各类插件的安装。

2017/9/29
修复轮播不动问题