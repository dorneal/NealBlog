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
                笔记发布
            </h3>
        </div>
        <div class="panel-body">
            <div>
                <form class="bs-example bs-example-form" role="form" action="${pageContext.request.contextPath}/manager/insertArticle" method="post">
                    <c:if test="${requestScope.articleTitleRepeatError!=null}">
                        <span style="color: red">${requestScope.articleTitleRepeatError}</span>
                    </c:if>
                    <div class="input-group">
                        <span class="input-group-addon">笔记标题</span>
                        <input type="text" class="form-control" placeholder="Title" name="articletitle" maxlength="50">
                    </div>
                    <br>
                    <div class="input-group">
                        <span class="input-group-addon">笔记作者</span>
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
                        <span class="input-group-addon">笔记类别</span>
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
                    <div id="editor">
                        <p>文章内容</p>
                    </div>
                    <br>
                    <button id="btn1" class="btn btn-primary" style="float: right;" type="submit">发布</button>
                    <input type="hidden" name="articlecontent" id="articlecontent">
                    <!-- 注意， 只需要引用 JS，无需引用任何 CSS ！！！-->
                    <script type="text/javascript" src="${pageContext.request.contextPath}/js/wangEditor.js"></script>
                    <script type="text/javascript">
                        var E = window.wangEditor;
                        var editor = new E('#editor');
                        editor.customConfig.menus =
                            [
                                'head',  // 标题
                                'link',  // 插入链接
                                'justify',  // 对齐方式
                                'foreColor',  // 文字颜色
                                'image',  // 插入图片
                                'code',  // 插入代码
                                'undo'  // 撤销
                            ];
                        editor.customConfig.uploadImgShowBase64 = true;
                        editor.create();
                        document.getElementById('btn1').addEventListener('click', function () {
                            // 读取 html
                            var articlecontent = document.getElementById('articlecontent');
                            articlecontent.value = editor.txt.html();
                            alert(articlecontent.value);
                        }, false);
                    </script>
                    <br>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>