<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<div class="col-md-9">
    <div>
        <jsp:include page="./../../header/nav/navpath.jsp"/>
        <%--如果不是点击显示正文时，显示简要文--%>
        <c:forEach items="${requestScope.searchResult}" var="nat">
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
    </div>
</div>