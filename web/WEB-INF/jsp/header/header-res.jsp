<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="title" content="NealBlog,nealblog"/>
    <meta name="author" content="neal"/>
    <meta name="subject" content="个人博客,博客"/>
    <meta name="description" content="个人博客，笔记，文章"/>
    <meta name="keywords" content="个人博客,JAVA笔记分享,JAVA博客"/>
    <meta name="generator" content="Sublime,DW,idea"/>
    <meta name="language" content="JAVA"/>
    <meta name="designer" content="neal,Neal"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>NealBlog</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/style2.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/style3.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/mystyle.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/summernote-bs4.css">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/imgs/icon/icon.ico">
    <script src="${pageContext.request.contextPath }/js/jquery-3.2.1.js"></script>
    <script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath }/js/summernote-bs4.js"></script>
    <%--防止恶意解析代码--%>
    <%--<script type="text/javascript">--%>
        <%--if (document.domain != 'nealblog.com' && document.domain != 'www.nealblog.com') {--%>
            <%--window.location.href = 'http://www.nealblog.com/';--%>
        <%--}--%>
    <%--</script>--%>
    <%--百度统计分析代码--%>
    <script>
        var _hmt = _hmt || [];
        (function () {
            var hm = document.createElement("script");
            hm.src = "https://hm.baidu.com/hm.js?d131e80dbe4e2a6df483fc811164f418";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
    </script>
    <%--百度自动推送代码--%>
    <script>
        (function () {
            var bp = document.createElement('script');
            var curProtocol = window.location.protocol.split(':')[0];
            if (curProtocol === 'https') {
                bp.src = 'https://zz.bdstatic.com/linksubmit/push.js';
            }
            else {
                bp.src = 'http://push.zhanzhang.baidu.com/push.js';
            }
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(bp, s);
        })();
    </script>
</head>
