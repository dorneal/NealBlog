<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<div class="col-md-9">
    <div>
        <jsp:include page="./../../header/nav/navpath.jsp"/>
        <%--如果不是点击显示正文时，显示简要文--%>
        <div class="page_header">
            <h3 class="text-center">
                "${requestScope.titleResult}"未找到!!!
            </h3>
            <div class="page_contents">
                <div>
                    <a href="http://www.baidu.com.cn/s?wd=${requestScope.titleResult}&cl=3" target="_blank">百度一下</a>
                </div>
            </div>
        </div>
    </div>
</div>