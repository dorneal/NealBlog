<%@ page pageEncoding="UTF-8" %>
<%--资源引用--%>
<jsp:include page="header/header-res.jsp"/>
<body>
<div class="container" style="margin-top: 10px;font-family: 微软雅黑,serif;font-size: 1.2em;">
    <div class="jumbotron">
        <form class="form-horizontal" role="form" action="${pageContext.request.contextPath}/login/login"
              method="post">
            <div class="form-group">
                <label for="authorname" class="col-md-5 control-label">用户名：</label>
                <div class="col-md-2">
                    <input type="text" class="form-control" id="authorname" name="authorname"
                           placeholder="请输入用户名">
                </div>
            </div>
            <div class="form-group">
                <label for="authorpassword" class="col-md-5 control-label">密 码：</label>
                <div class="col-md-2">
                    <input type="password" class="form-control" id="authorpassword" name="authorpassword"
                           placeholder="请输入密码">
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-offset-5 col-md-2">
                    <button type="submit" class="btn btn-default">登 录</button>
                </div>
            </div>
        </form>
    </div>
</div>
</body>
</html>