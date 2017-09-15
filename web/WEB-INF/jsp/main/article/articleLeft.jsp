<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<div class="panel panel-default">
    <div class="panel-heading">
        <h3 class="panel-title">
            2017
        </h3>
    </div>
    <div class="panel-body">
        <ul style="padding: 0;">
            <c:forEach items="${requestScope.articleTitle}" var="at">
                <li style="list-style-type: none;margin-bottom: 5px;"><a
                        href="${pageContext.request.contextPath}/articleContext?ArticleTitle=${at.articletitle}">${at.articletitle}(<span
                        class="glyphicon glyphicon-stats"></span>：${at.clickcount})</a></li>
            </c:forEach>
        </ul>
    </div>
</div>


