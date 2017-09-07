<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<div class="col-md-9">
    <div>
        <%--如果不是点击显示正文时，显示简要文--%>
        <c:if test="${articleData==null}">
            <c:forEach items="${nowArticleData}" var="nat">
                <div class="page_header">
                    <h3 class="text-center">
                        <a href="#">${nat.articletitle}</a></h3>
                    <div class="page_contents">
                        <div>
                                ${nat.categoryid}
                        </div>
                        <p><a href="#" charset="btn-default">Read More</a>
                        <p>来源：<span>${nat.authorid}</span></p></p>
                    </div>
                </div>
            </c:forEach>
            <div class="page_count">
                <p class="text-center"><a href="">上一页</a> | <a href="">下一页</a></p>
            </div>
        </c:if>
        <%--如果点击的是显示正文，显示正文--%>
        <c:if test="${articleData!=null}">
        <div class="page_header">
            <h3 class="text-center">
                <a href="#">${articleData[0].article.articletitle}</a></h3>
            <div class="page_contents">
                <div class="page_contents">
                    <div class="col-md-9"></div>
                    <div class="col-md-3">
                    <p>来源：<span>${articleData[0].author.authorname}</span></p>
                    <p>类别：<span>${articleData[0].category.categoryname}</span></p>
                    <p>点击数：<span>${articleData[0].article.clickcount}</span>
                    </p></div>
                    <div>
                            ${articleData[0].article.articlecontent}
                    </div>
                </div>
            </div>
            </c:if>
        </div>
    </div>
</div>