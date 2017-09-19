<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="UTF-8" %>
<%--资源引用--%>
<jsp:include page="./../header/header-res.jsp"/>
<body>
<jsp:include page="./../header/header-manager.jsp"/>

<div class="container" style="margin-top: 50px;">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">
                文章管理
            </h3>
        </div>
        <div class="panel-body">
            <table class="table table-condensed">
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
                <c:forEach items="${requestScope.pageBeanByArticle.lists}" var="la">
                    <tr>
                        <td>${la.article.articleid}</td>
                        <td>${la.article.articletitle}</td>
                        <td>${la.article.articletime}</td>
                        <td>${la.article.clickcount}</td>
                        <td><a href="${pageContext.request.contextPath}/manager/findByArticleId?articleid=${la.article.articleid}">更新</a> <a href="${pageContext.request.contextPath}/manager/deleteArticle?articleid=${la.article.articleid}">删除</a></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <ul class="pagination">
                <c:if test="${requestScope.pageBeanByArticle.currPage==1}">
                    <li class="disabled"><a>&laquo;</a></li>
                </c:if>
                <c:if test="${requestScope.pageBeanByArticle.currPage!=1}">
                    <li>
                        <a href="${pageContext.request.contextPath}/manager/managerByArticle?currentPage=${requestScope.pageBeanByArticle.currPage-1}">&laquo;</a>
                    </li>
                </c:if>
                <li class="active"><a name="currentPage">第${requestScope.pageBeanByArticle.currPage}页</a></li>
                <c:if test="${requestScope.pageBeanByArticle.currPage>requestScope.pageBeanByArticle.totalPage}">
                    <li class="disabled"><a>&raquo;</a></li>
                </c:if>
                <c:if test="${requestScope.pageBeanByArticle.currPage<=requestScope.pageBeanByArticle.totalPage}">
                    <li>
                        <a href="${pageContext.request.contextPath}/manager/managerByArticle?currentPage=${requestScope.pageBeanByArticle.currPage+1}">&raquo;</a>
                    </li>
                </c:if>
            </ul>
        </div>
    </div>
</div>
</body>
</html>