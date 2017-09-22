<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<div class="col-md-9">
    <div>
        <jsp:include page="./../../header/nav/navpath.jsp"/>
        <%--如果不是点击显示正文时，显示简要文--%>
        <c:if test="${requestScope.articleData==null}">
            <c:forEach items="${requestScope.pageBean.lists}" var="nat">
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
            <div class="col-md-4"></div>
            <div class="col-md-8">
                <ul class="pagination">
                    <c:if test="${requestScope.pageBean.currPage==1}">
                        <li class="disabled"><a>&laquo;</a></li>
                    </c:if>
                    <c:if test="${requestScope.pageBean.currPage!=1}">
                        <li><a href="${pageContext.request.contextPath}/nowNote?currentPage=1">首页</a></li>
                        <li>
                            <a href="${pageContext.request.contextPath}/nowNote?currentPage=${requestScope.pageBean.currPage-1}">&laquo;</a>
                        </li>
                    </c:if>
                    <li class="active"><a name="currentPage">第${requestScope.pageBean.currPage}页</a></li>
                    <c:if test="${requestScope.pageBean.currPage>requestScope.pageBean.totalPage}">
                        <li class="disabled"><a>&raquo;</a></li>
                    </c:if>
                    <c:if test="${requestScope.pageBean.currPage<=requestScope.pageBean.totalPage}">
                        <li>
                            <a href="${pageContext.request.contextPath}/nowNote?currentPage=${requestScope.pageBean.currPage+1}">&raquo;</a>
                        </li>
                        <li><a href="${pageContext.request.contextPath}/nowNote?currentPage=${requestScope.pageBean.totalPage}">尾页</a></li>
                    </c:if>
                    <li>
                        &nbsp;
                        <select class="form-control" name="currentPage" style="width: 70px;display: inline" onchange="location.href=this.value;">
                            <c:forEach var="lba" begin="1" end="${requestScope.pageBean.totalPage+1}" step="1">
                                <option value="${pageContext.request.contextPath}/nowNote?currentPage=${lba}">${lba}</option>
                            </c:forEach>
                        </select>
                    </li>
                </ul>
            </div>
        </c:if>
        <%--如果点击的是显示正文，显示正文--%>
        <c:if test="${requestScope.articleData!=null}">
        <div class="page_header">
            <h2 class="text-center" style="font-family: 宋体;">
                    ${requestScope.articleData.article.articletitle}</h2>
            <div class="page_contents">
                <div class="page_contents">
                    <div class="col-md-7"></div>
                    <div class="col-md-5" style="margin: 0;padding: 0;">
                        <p><span class="glyphicon glyphicon-user"></span> ${requestScope.articleData.author.authorname}&nbsp;&nbsp;
                            <span class="glyphicon glyphicon-tags"></span>&nbsp;&nbsp;${requestScope.articleData.category.categoryname}&nbsp;&nbsp;
                                ${requestScope.articleData.article.clickcount} <span
                                    class="glyphicon glyphicon-eye-open"></span>
                        </p></div>
                    <div style="font-family: 微软雅黑;font-size: 1.2em;padding: 10px 10px 20px 10px;">
                            ${requestScope.articleData.article.articlecontent}
                    </div>
                </div>
            </div>
            </c:if>
        </div>
    </div>
</div>