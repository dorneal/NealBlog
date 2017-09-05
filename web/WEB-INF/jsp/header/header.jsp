<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/javascript">
    function authorLogin() {
        document.login.action = "${pageContext.request.contextPath}/login.action";
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
            <a class="navbar-brand" href="${pageContext.request.contextPath}/home.action">NealBlog</a>
        </div>
        <div class="collapse navbar-collapse" id="example-navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="${pageContext.request.contextPath}/home.action">首页</a></li>
                <li>
                    <a href="${pageContext.request.contextPath}/note.action">笔记</a>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        推荐 <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="https://www.nowcoder.com/" target="_blank">牛客网</a></li>
                        <li><a href="http://www.w3school.com.cn/" target="_blank">W3C</a></li>
                        <li><a href="https://www.codewars.com/" target="_blank">CodeWars</a></li>
                        <li class="divider"></li>
                        <li><a href="https://stackoverflow.com/" target="_blank">Stack Overflow</a></li>
                        <li class="divider"></li>
                        <li><a href="http://ifeve.com/" target="_blank">并发编程网</a></li>
                    </ul>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/article.action">个人文章</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/aboutMe.action">关于我</a>

                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/comment.action">给我留言</a>
                </li>
            </ul>
            <%--暂时不需要登录模块--%>
            <%-- <ul class="nav navbar-nav navbar-right">
                 <c:if test="${user!=null}">
                     <li><a href="#"><span class="glyphicon glyphicon-user"></span> ${user.authorname}</a></li>
                     <li><a href="${pageContext.request.contextPath}/logout.action"><span class="glyphicon glyphicon-log-in"></span> 退出</a></li>
                 </c:if>
                 <c:if test="${user==null}">
                     <li><a href="#" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-user"></span> 登录</a></li>
                     <li><a><span class="glyphicon glyphicon-log-in"></span> 退出</a></li>
                 </c:if>
             </ul>--%>
        </div>
    </div>
</nav>


<!-- 模态框（Modal） -->
<%--<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog ">
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
                    <div class="form-group">
                        <label class="control-label">用户名：</label>
                        <input class="form-control" name="authorEx.authorname">
                    </div>
                    <div class="form-group">
                        <label class="control-label">密码：</label>
                        <input type="password" class="form-control" name="authorEx.authorpassword">
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
</div>--%>
