<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<div class="col-md-9">
    <div>
        <jsp:include page="./../../header/nav/navpath.jsp"/>
        <%--如果不是点击显示正文时，显示简要文--%>
        <div class="page_header">
            <h3 class="text-center">
                ${requestScope.noPageContent}
            </h3>
        </div>
    </div>
</div>