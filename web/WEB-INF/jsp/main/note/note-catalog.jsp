<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="UTF-8" %>
<jsp:include page="../../header/header-res.jsp"/>
<body style="position: static">
<jsp:include page="../../header/header.jsp"/>

<jsp:include page="../../header/header-img.jsp"/>

<div class="disc container">
		<div class="row">
			<div class="col-md-3" style="background-color: rgb(211, 211, 211);padding-top: 20px;padding-bottom: 20px;">
				<div class="">
                    <form name="searchArticle" method="post"
                          action="${pageContext.request.contextPath}/noteSearch">
                        <label><input type="search" name="inputContent"></label>
                        <label><input type="submit" class="btn-default" value="搜索"></label>
                    </form>
                    <div class="container">
                        <div class="container navbar-inverse" style="margin-top: 10px;border-radius: 6px;">
                            <button type="button" class="navbar-toggle" data-toggle="collapse"
                                    data-target="#example-navbar-collapse1" style="float: left;">
                                <span class="sr-only">切换导航</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                        </div>
                    </div>

				</div>
                <div class="collapse navbar-collapse" id="example-navbar-collapse1">
                        <jsp:include page="dataStructure.jsp"/>
                        <jsp:include page="languages.jsp"/>
                        <jsp:include page="difficult.jsp"/>
                </div>
			</div>
            <c:if test="${requestScope.noPageContent!=null}">
                <jsp:include page="./nonotepagecontent.jsp"/>
            </c:if>
            <%--左侧栏的点击事件--%>
            <c:if test="${requestScope.pageContents!=null}">
                <jsp:include page="./notepagecontent.jsp"/>
            </c:if>
            <c:if test="${requestScope.searchResult==null and requestScope.boolResult==null and requestScope.pageContents==null and requestScope.noPageContent==null}">
                <%--搜索框为空--%>
                <jsp:include page="../news/newsAndOther.jsp"/>
            </c:if>
            <%--没有找到结果--%>
            <c:if test="${requestScope.boolResult!=null}">
                <jsp:include page="./noResult.jsp"/>
            </c:if>
            <%--有结果--%>
            <c:if test="${requestScope.searchResult!=null}">
                <jsp:include page="./searchResult.jsp"/>
            </c:if>
        </div>
</div>
<jsp:include page="./../../header/redirectTop.jsp"/>
<jsp:include page="../../footer/footer.jsp"/>
</body>
</html>