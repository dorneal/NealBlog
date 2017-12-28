<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<script type="text/javascript">
    $(document).ready(function () {
        $("ul#nav").find("li").each(function () {
            var a = $(this).find("a:first")[0];
            if ($(a).attr("href") === location.pathname) {
                $(this).addClass("active");
            } else {
                $(this).removeClass("active");
            }
        });
    });
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
            <a class="navbar-brand" href="${pageContext.request.contextPath}/home">NealBlog</a>
        </div>
        <div class="collapse navbar-collapse" id="example-navbar-collapse">
            <ul class="nav navbar-nav" id="nav">
                <li class="active"><a href="${pageContext.request.contextPath}/home">首页</a></li>
                <li>
                    <a href="${pageContext.request.contextPath}/nowNote">笔记</a>
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
                    <a href="${pageContext.request.contextPath}/nowArticle">个人文章</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/aboutMe">关于我</a>

                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/comment">给我留言</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

