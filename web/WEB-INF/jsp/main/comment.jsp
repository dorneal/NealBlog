<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page pageEncoding="UTF-8" %>
<jsp:include page="./../header/header-res.jsp"/>
<body style="position: static">
<jsp:include page="./../header/header.jsp"/>

<jsp:include page="./../header/header-img.jsp"/>

<div class="disc container">
    <div class="row">
        <jsp:include page="./../header/nav/navpath.jsp"/>
        <div class="col-md-2"></div>
        <div class="col-md-6">
            <form action="" method="post">
                <div class=""><h3>留下你的脚印</h3>
                    <!-- UY BEGIN -->
                    <div id="uyan_frame"></div>
                    <script type="text/javascript" src="http://v2.uyan.cc/code/uyan.js?uid=2144319"></script>
                    <!-- UY END -->
                </div>
            </form>
        </div>
        <div class="col-md-4"></div>
    </div>
</div>
<jsp:include page="./../header/redirectTop.jsp"/>
<jsp:include page="./../footer/footer.jsp"/>
</body>
</html>
