<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="UTF-8" %>
<%--资源引用--%>
<jsp:include page="header/header-res.jsp"/>
<body>
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
                <li>
                    <a href="${pageContext.request.contextPath}/manager/managerByArticle">文章管理</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/nowArticle">文章发布</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/manager/managerByNote">笔记管理</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/comment">笔记发布</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div class="container" style="margin-top: 50px;">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">
                管理
            </h3>
        </div>
        <div class="panel-body">
            <table class="table table-condensed">
                <caption>管理</caption>
                <thead>
                <tr>
                    <th>ID</th>
                    <th>文章名称</th>
                    <th>日期</th>
                    <th>点击数</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${requestScope.listByArticle}" var="la">
                    <tr>
                        <td>${la.articleid}</td>
                        <td>${la.articletitle}</td>
                        <td>${la.articletime}</td>
                        <td>${la.clickcount}</td>
                        <td><a href="">更新</a> <a href="">删除</a></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <table class="table table-condensed">
                <caption>作者管理</caption>
                <thead>
                <tr>
                    <th>ID</th>
                    <th>名称</th>
                    <th>发布文章数量</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${requestScope.listByAuthor}" var="la">
                    <tr>
                        <td>${la.authorid}</td>
                        <td>${la.authorname}</td>
                        <td>${la.publishcount}</td>
                        <td><a href="">更新</a></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <table class="table table-condensed">
                <caption>类别管理</caption>
                <thead>
                <tr>
                    <th>名称</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${requestScope.listByCategory}" var="lc">
                    <tr>
                        <td>${lc.categoryname}</td>
                        <td><a href="">更新</a></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>