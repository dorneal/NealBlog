<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="UTF-8" %>
<%--资源引用--%>
<jsp:include page="./../header/header-res.jsp"/>
<body>
<jsp:include page="./../header/header-manager.jsp"/>

<div class="container" style="margin-top: 50px;">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">
                文章编辑
            </h3>
        </div>
        <div class="panel-body">
            <div>
                <form class="bs-example bs-example-form" role="form"
                      action="${pageContext.request.contextPath}/manager/updateArticle" method="post">
                    <c:if test="${requestScope.articleTitleRepeatError!=null}">
                        <span style="color: red">${requestScope.articleTitleRepeatError}</span>
                    </c:if>
                    <input type="hidden" value="${requestScope.articleVoList.article.articleid}" name="articleid"/>
                    <div class="input-group">
                        <span class="input-group-addon">文章标题</span>
                        <input type="text" class="form-control"
                               value="${requestScope.articleVoList.article.articletitle}" name="articletitle"
                               maxlength="50">
                    </div>
                    <br>
                    <div class="input-group">
                        <span class="input-group-addon">发布时间</span>
                        <input type="text" class="form-control"
                               value="${requestScope.articleVoList.article.articletime}" name="articletime"
                               maxlength="50">
                    </div>
                    <br>
                    <div class="input-group">
                        <span class="input-group-addon">文章作者</span>
                        <select class="form-control" name="authorid">
                            <option class="active"
                                    value="${requestScope.articleVoList.author.authorid}">${requestScope.articleVoList.author.authorname}</option>
                        </select>
                    </div>
                    <br>
                    <div class="input-group">
                        <span class="input-group-addon">文章类别</span>
                        <select class="form-control" name="categoryid">
                            <option class="active"
                                    value="${requestScope.articleVoList.category.categoryid}">${requestScope.articleVoList.category.categoryname}</option>
                        </select>
                    </div>
                    <br>
                    <div class="input-group">
                        <span class="input-group-addon">简要内容</span>
                        <textarea name="easycontent" id="article-des" cols="30" rows="5" class="form-control"
                                  style="resize: none;">${requestScope.articleVoList.article.easycontent}</textarea>
                    </div>
                    <br>
                    <div id="summernote">${requestScope.articleVoList.article.articlecontent}</div>
                    <script>
                        $('#summernote').summernote({
                            tabsize: 2,
                            height: 240
                        });
                    </script>
                    <br>
                    <button id="btn1" class="btn btn-primary" style="float: right;" type="submit">发布</button>
                    <script>
                        $('#btn1').click(function() {
                            var markupStr = $('#summernote').summernote('code');
                            var articlecontent = document.getElementById('articlecontent');
                            articlecontent.value = markupStr;
                            alert(articlecontent.value);
                        });
                    </script>
                    <br>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>