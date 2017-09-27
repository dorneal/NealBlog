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
                文章发布
            </h3>
        </div>
        <div class="panel-body">
            <div>
                <form class="bs-example bs-example-form" role="form" action="${pageContext.request.contextPath}/manager/insertArticle" method="post">
                    <c:if test="${requestScope.articleTitleRepeatError!=null}">
                        <span style="color: red">${requestScope.articleTitleRepeatError}</span>
                    </c:if>
                    <div class="input-group">
                        <span class="input-group-addon">文章标题</span>
                        <input type="text" class="form-control" placeholder="Title" name="articletitle" maxlength="50">
                    </div>
                    <br>
                    <div class="input-group">
                        <span class="input-group-addon">文章作者</span>
                        <select class="form-control" name="authorid">
                            <c:forEach items="${requestScope.listByAuthor}" var="lba">
                                <option value="${lba.authorid}">${lba.authorname}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <br>
                    <div class="input-group">
                        <span class="input-group-addon">发布时间</span>
                        <input type="text" class="form-control" placeholder="time" name="articletime" maxlength="50">
                    </div>
                    <br>
                    <div class="input-group">
                        <span class="input-group-addon">文章类别</span>
                        <select class="form-control" name="categoryid">
                            <c:forEach items="${requestScope.listByCategory}" var="lbc">
                                <option value="${lbc.categoryid}">${lbc.categoryname}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <br>
                    <div class="input-group">
                        <span class="input-group-addon">简要内容</span>
                        <textarea name="easycontent" id="article-des" cols="30" rows="5" class="form-control"
                                  style="resize: none;"></textarea>
                    </div>
                    <br>
                    <div id="summernote"></div>
                    <script>
                        $('#summernote').summernote({
                            placeholder: '请输入文章',
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