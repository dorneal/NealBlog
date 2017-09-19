<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="UTF-8" %>
<%--资源引用--%>
<jsp:include page="header/header-res.jsp"/>
<body>
<jsp:include page="header/header-manager.jsp"/>

<div class="container" style="margin-top: 50px;">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">
                管理
            </h3>
        </div>
        <div class="panel-body">
            <table class="table table-condensed">
                <caption>总文章管理</caption>
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
                        <td><a href="${pageContext.request.contextPath}/manager/findByArticleId?articleid=${la.articleid}">更新</a> <a href="${pageContext.request.contextPath}/manager/deleteArticle?articleid=${la.articleid}">删除</a></td>
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
                    <th>ID</th>
                    <th>名称</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${requestScope.listByCategory}" var="lc">
                    <tr>
                        <td>${lc.categoryid}</td>
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