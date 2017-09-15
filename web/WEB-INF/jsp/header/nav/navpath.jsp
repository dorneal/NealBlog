<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<ol class="breadcrumb" style="background-color: #ffffff">
    <li><span class="icon-location2"></span>当前位置</li>
    <%
        String url;
        String currentPageName;
        System.out.println(request.getRequestURI());
        switch (request.getRequestURI()){
            case "/NealBlog/WEB-INF/jsp/main/note/note-catalog.jsp":
                url = "http://localhost/NealBlog/note";
                currentPageName = "笔记";
                break;
            case "/NealBlog/WEB-INF/jsp/main/article.jsp":
                url = "http://localhost/NealBlog/nowArticle";
                currentPageName = "个人文章";
                break;
            case "/NealBlog/WEB-INF/jsp/main/aboutMe.jsp":
                url = "http://localhost/NealBlog/aboutMe";
                currentPageName = "关于我";
                break;
            case "/NealBlog/WEB-INF/jsp/main/comment.jsp":
                url = "http://localhost/NealBlog/comment";
                currentPageName = "给我留言";
                break;
            default:
                url = null;
                currentPageName = null;
                break;
        }
        request.setAttribute("currentPageName",currentPageName);
    %>
    <li><a href="http://localhost/NealBlog/home">Home</a></li>
    <c:if test="${requestScope.currentPageName!=null}">
        <li><a href="<%= url %>"><%= currentPageName %></a></li>
    </c:if>
    <c:if test="${requestScope.articleData.article.articletitle!=null}">
        <li class="active">${requestScope.articleData.article.articletitle}</li>
    </c:if>
</ol>
