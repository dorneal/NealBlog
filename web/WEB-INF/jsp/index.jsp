<%@ page pageEncoding="UTF-8" %>
<%--资源引用--%>
<jsp:include page="header/header-res.jsp"/>
<body>
<jsp:include page="header/header.jsp"/>
<%--轮播--%>
<jsp:include page="header/carousel.jsp"/>
<%--主页简介--%>
<div class="disc container" style="margin-bottom: 185px;">
    <div class="row">
        <div class="col-md-4 text-center "><h2>前端技术</h2>
            <p>介绍jsp、html、css知识</p>
            <p><a href="" class="btn btn-default" role="button">查看详情</a></p></div>
        <div class="col-md-4 text-center "><h2>后端技术</h2>
            <p>介绍JAVA及Web开发知识</p>
            <p><a href="" class="btn btn-default" role="button">查看详情</a></p></div>
        <div class="col-md-4 text-center "><h2>其他相关</h2>
            <p>介绍Web开发的相关内容</p>
            <p><a href="" class="btn btn-default" role="button">查看详情</a></p></div>
    </div>
</div>
<%--尾部--%>
<jsp:include page="footer/footer.jsp"/>
</body>
</html>