<%@ page pageEncoding="UTF-8" %>
<jsp:include page="./../header/header-res.jsp"/>
<body style="position: static">
<jsp:include page="./../header/header.jsp"/>

<jsp:include page="./../header/header-img.jsp"/>

<div class="disc container">
    <div class="row">
        <jsp:include page="./../header/nav/navpath.jsp"/>
        <div class="col-md-3"></div>
        <div class="col-md-6">
            <div class="col-md-3">
                <img src="${pageContext.request.contextPath}/imgs/myself.jpg" alt="我自己" style="border-radius: 50%;height: 100px;width: 100px;">
            </div>
            <div class="col-md-4">
                <h3>简单介绍</h3>
                <p>
                    一个95后天蝎座小伙。
                </p>
            </div>
        </div>
    </div>
    <div class="col-md-2"></div>
</div>
</div>
<jsp:include page="./../footer/footer.jsp"/>
</body>
</html>