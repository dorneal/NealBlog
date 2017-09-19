<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/javascript">
    $(document).ready(function () {
        $("ul#nav").find("li").each(function () {
            var a = $(this).find("a:first")[0];
            if ($(a).attr("href") === location.pathname) {
                $(this).addClass("active");
            } else {
                $(this).removeClass("active");
            }
        });
    });
</script>
<nav class="navbar navbar-default navbar-fixed-top navbar-inverse" role="navigation">
    <div class="container-fluid container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                    data-target="#example-navbar-collapse">
                <span class="sr-only">切换导航</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="${pageContext.request.contextPath}/home">NealBlog</a>
        </div>
        <div class="collapse navbar-collapse" id="example-navbar-collapse">
            <ul class="nav navbar-nav" id="nav">
                <li>
                    <a href="${pageContext.request.contextPath}/manager/managerByArticle">文章管理</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/manager/articlePublish">文章发布</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/manager/managerByNote">笔记管理</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/manager/notePublish">笔记发布</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/manager/showList">管理</a>
                </li>
            </ul>
        </div>
    </div>
</nav>