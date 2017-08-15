<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/javascript">
    function authorLogin(){
        document.login.action="${pageContext.request.contextPath}/login.action";
        document.login.submit();
    }
</script>
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
                <li class="active"><a href="${pageContext.request.contextPath}/home.action">首页</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        笔记 <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="${pageContext.request.contextPath}/dataStructure.action">数据结构</a></li>
                        <li class="divider"></li>
                        <li><a href="${pageContext.request.contextPath}/languages.action">编程语言</a></li>
                        <li class="divider"></li>
                        <li><a href="${pageContext.request.contextPath}/difficult.action">疑难杂症</a></li>
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
                <c:if test="${user!=null}">
                    <li><a href="#"><span class="glyphicon glyphicon-user"></span> ${user.authorname}</a></li>
                    <li><a href="${pageContext.request.contextPath}/logout.action"><span class="glyphicon glyphicon-log-in"></span> 退出</a></li>
                </c:if>
                <c:if test="${user==null}">
                    <li><a href="#" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-user"></span> 登录</a></li>
                    <li><a><span class="glyphicon glyphicon-log-in"></span> 退出</a></li>
                </c:if>
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
            <form method="post" name="login" action="${pageContext.request.contextPath}/login.action">
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-4 col-lg-4 col-sm-4 text-right">
                            <label>用户名：</label><br>
                            <label>密码：</label>
                        </div>
                        <div class="col-md-8 col-lg-8 col-sm-8 text-left">
                            <label><input name="authorEx.authorname"></label>
                            <label><input type="password" name="authorEx.authorpassword"></label>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭
                    </button>
                    <button type="button" class="btn btn-primary" onclick="authorLogin()">
                        登录
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>
