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
                    <textarea placeholder="我有话说..." class="commentFrame">
                    </textarea>
                </div>
                <div class="col-md-3">使用账号登录：</div>
                <div class="col-md-3">
                    <a href="https://api.weibo.com/oauth2/authorize?client_id=507593302&redirect_uri=http%3A%2F%2Fapi.uyan.cc%2Fv4%2Flogin%2F%3Fmode%3Dbind%26ufrom%3Dtsina%26ucbs%3Ded33ce55fd9c7fc3f7421ba51aae11e0&response_type=code">
                        <span class="icon-sina-weibo fontbig"></span>
                    </a>
                    &nbsp;
                    <a href="https://graph.qq.com/oauth/show?which=Login&display=pc&response_type=code&client_id=216508&redirect_uri=http%3A%2F%2Fapi.uyan.cc%2Fv4%2Flogin%2F%3Fmode%3Dbind%26ufrom%3Dqq%26ucbs%3Ded33ce55fd9c7fc3f7421ba51aae11e0&scope=get_user_info%2Cadd_topic%2Cadd_one_blog%2Cadd_album%2Cupload_pic%2Clist_album%2Cadd_share%2Ccheck_page_fans%2Cadd_t%2Cadd_pic_t%2Cdel_t%2Cget_repost_list%2Cget_info%2Cget_other_info%2Cget_fanslist%2Cget_idollist%2Cadd_idol%2Cdel_idol%2Cget_tenpay_addr">
                        <span class="icon-telegram fontbig"></span>
                    </a>
                </div>
                <div class="col-md-6 text-right"><input type="submit" value="发布" class="button"></div>
            </form>
        </div>
        <div class="col-md-4"></div>
    </div>
    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-6">
            <div style="border-bottom: 1px solid #3c3c3c;"><h4>已有评论</h4></div>
            <%--<c:forEach items="${comments}" var="comment">--%>
                <div class="">
                    <div>用户1：</div>
                    <div>他说：做的不错呦！！！</div>
                </div>
            <%--</c:forEach>--%>
        </div>
        <div class="col-md-2"></div>
    </div>
</div>
<jsp:include page="./../header/redirectTop.jsp"/>
<jsp:include page="./../footer/footer.jsp"/>
</body>
</html>
