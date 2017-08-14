<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="navbar navbar-default navbar-fixed-top navbar-inverse" role="navigation">
    <div class="container-fluid container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                    data-target="#example-navbar-collapse">
                <span class="sr-only">切换导航</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">NealBlog</a>
        </div>
        <div class="collapse navbar-collapse" id="example-navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">首页</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        笔记 <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="">数据结构</a></li>
                        <li class="divider"></li>
                        <li><a href="">编程语言</a></li>
                        <li class="divider"></li>
                        <li><a href="">疑难杂症</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        推荐 <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="https://www.nowcoder.com/">牛客网</a></li>
                        <li><a href="http://www.w3school.com.cn/">W3C</a></li>
                        <li><a href="https://www.codewars.com/">CodeWars</a></li>
                        <li class="divider"></li>
                        <li><a href="https://stackoverflow.com/">Stack Overflow</a></li>
                        <li class="divider"></li>
                        <li><a href="http://ifeve.com/">并发编程网</a></li>
                    </ul>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-user"></span> 登录</a></li>
                <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> 退出</a></li>
            </ul>
        </div>
    </div>
</nav>


<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel">
                    登录
                </h4>
            </div>
            <form action="" method="post" name="login">
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-4 text-right">
                            <label>用户名：</label><br>
                            <label>密码：</label>
                        </div>
                        <div class="col-md-8 text-left">
                            <label><input type="text" name="authorname"></label>
                            <label><input type="password" name="authorpassword"></label>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                    </button>
                    <button type="button" class="btn btn-primary" onclick="login()">
                        登录
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>
