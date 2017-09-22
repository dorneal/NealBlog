<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="UTF-8" %>
<div class="col-md-9">
    <div>
        <c:if test="${requestScope.pageContents!=null}">
        <c:forEach items="${requestScope.pageContents}" var="nat">
        <div class="page_header">
            <h3 class="text-center">
                <a href="${pageContext.request.contextPath}/noteContext?ArticleTitle=${nat.article.articletitle}">${nat.article.articletitle}</a>
            </h3>
            <div class="page_contents">
                <div>
                        ${nat.article.easycontent}
                </div>
                <p>
                    <a href="${pageContext.request.contextPath}/noteContext?ArticleTitle=${nat.article.articletitle}"
                       charset="btn-default">Read More</a>
                <p>来源：<span>${nat.author.authorname}</span></p>
                <p>点击数：<span>${nat.article.clickcount}</span></p>
            </div>
        </div>
        </c:forEach>
        </c:if>
    </div>
</div>