<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<div class="panel panel-default">
    <div class="panel-heading">
        <h3 class="panel-title">
            2017
        </h3>
    </div>
    <div class="panel-body">
        <ul>
            <c:forEach items="${articleTitle}" var="at">
                <li><a href="${pageContext.request.contextPath}/articleContext.action?ArticleTitle=${at.articletitle}">${at.articletitle}</a></li>
            </c:forEach>
        </ul>
    </div>
</div>


