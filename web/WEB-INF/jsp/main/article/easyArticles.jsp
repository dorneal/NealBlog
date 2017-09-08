<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<div class="col-md-9">
    <div>
        <%--如果不是点击显示正文时，显示简要文--%>
        <c:if test="${articleData==null}">
            <c:forEach items="${nowArticleData}" var="nat">
                <div class="page_header">
                    <h3 class="text-center">
                        <a href="${pageContext.request.contextPath}/articleContext.action?ArticleTitle=${nat.article.articletitle}">${nat.article.articletitle}</a>
                    </h3>
                    <div class="page_contents">
                        <div>
                                ${nat.article.easycontent}
                        </div>
                        <p>
                            <a href="${pageContext.request.contextPath}/articleContext.action?ArticleTitle=${nat.article.articletitle}"
                               charset="btn-default">Read More</a>
                        <p>来源：<span>${nat.author.authorname}</span></p>
                        <p>点击数：<span>${nat.article.clickcount}</span></p>
                    </div>
                </div>
            </c:forEach>
            <ul class="pagination">
                <li><a href="#">&laquo;</a></li>
                <li class="active"><a href="#">1</a></li>
                <li class="disabled"><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li><a href="#">&raquo;</a></li>
            </ul>
        </c:if>
        <%--如果点击的是显示正文，显示正文--%>
        <c:if test="${articleData!=null}">
        <div class="page_header">
            <h2 class="text-center">
                    ${articleData.article.articletitle}</h2>
            <div class="page_contents">
                <div class="page_contents">
                    <div class="col-md-7"></div>
                    <div class="col-md-5" style="margin: 0;padding: 0;">
                        <p><span class="glyphicon glyphicon-user"></span> ${articleData.author.authorname}&nbsp;&nbsp;
                            <span class="glyphicon glyphicon-tags"></span>&nbsp;&nbsp;${articleData.category.categoryname}&nbsp;&nbsp;
                                ${articleData.article.clickcount} <span class="glyphicon glyphicon-eye-open"></span>
                        </p></div>
                    <div>
                            ${articleData.article.articlecontent}
                    </div>
                </div>
            </div>
            </c:if>
        </div>
    </div>
</div>