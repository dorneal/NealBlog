<%@ page import="java.util.Calendar" %>
<%@ page pageEncoding="UTF-8" %>
<%--资源引用--%>
<jsp:include page="header/header-res.jsp"/>
<body>
<jsp:include page="header/header.jsp"/>
<%--轮播--%>
<%@include file="header/carousel.jsp" %>
<%--主页简介--%>
<%
    Calendar now = Calendar.getInstance();
%>
<div class="container" style="margin-bottom: 40px;">
    <div class="jumbotron">
        <h1 style="font-family: 宋体,serif;">安静、冷静、平静</h1>
        <p>欢迎来到nEAlBloG &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span
                class="icon-calendar"></span>&nbsp;<%=now.get(Calendar.YEAR) + "/" + (now.get(Calendar.MONTH) + 1) + "/" + now.get(Calendar.DAY_OF_MONTH) + " 星期" + (now.get(Calendar.DAY_OF_WEEK) - 1)%>
        </p>
        <p><a class="btn btn-default btn-lg" role="button" href="${pageContext.request.contextPath}/nowNote">
            <span class="glyphicon glyphicon-flash"></span></a>
            <a class="btn btn-default btn-lg" role="button" href="${pageContext.request.contextPath}/nowArticle">
                <span class="glyphicon glyphicon-usd"></span></a>
            <a class="btn btn-default btn-lg" role="button" href="${pageContext.request.contextPath}/comment">
                <span class="glyphicon glyphicon-fire"></span></a>
            <a class="btn btn-default btn-lg" role="button" href="${pageContext.request.contextPath}/aboutMe">
                <span class="glyphicon glyphicon-leaf"></span></a>
        </p>
    </div>
</div>
<%--尾部--%>
<jsp:include page="footer/footer.jsp"/>
</body>
</html>