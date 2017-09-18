<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="UTF-8" %>
<%--资源引用--%>
<jsp:include page="./../header/header-res.jsp"/>
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
                <caption>文章管理</caption>
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
                <c:forEach items="${requestScope.pageBeanByNote.lists}" var="la">
                    <tr>
                        <td>${la.article.articleid}</td>
                        <td>${la.article.articletitle}</td>
                        <td>${la.article.articletime}</td>
                        <td>${la.article.clickcount}</td>
                        <td><a href="">更新</a> <a
                                href="${pageContext.request.contextPath}/manager/deleteNote?articleid=${la.article.articleid}">删除</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <ul class="pagination">
                <c:if test="${requestScope.pageBeanByNote.currPage==1}">
                    <li class="disabled"><a>&laquo;</a></li>
                </c:if>
                <c:if test="${requestScope.pageBeanByNote.currPage!=1}">
                    <li>
                        <a href="${pageContext.request.contextPath}/manager/managerByNote?currentPage=${requestScope.pageBeanByNote.currPage-1}">&laquo;</a>
                    </li>
                </c:if>
                <li class="active"><a name="currentPage">第${requestScope.pageBeanByNote.currPage}页</a></li>
                <c:if test="${requestScope.pageBeanByNote.currPage>requestScope.pageBeanByNote.totalPage}">
                    <li class="disabled"><a>&raquo;</a></li>
                </c:if>
                <c:if test="${requestScope.pageBeanByNote.currPage<=requestScope.pageBeanByNote.totalPage}">
                    <li>
                        <a href="${pageContext.request.contextPath}/manager/managerByNote?currentPage=${requestScope.pageBeanByNote.currPage+1}">&raquo;</a>
                    </li>
                </c:if>
            </ul>
        </div>
    </div>
</div>
</body>
</html>