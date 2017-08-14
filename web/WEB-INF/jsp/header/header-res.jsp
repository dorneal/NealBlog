<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>NealBlog</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/style2.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/css/style3.css">
    <script src="${pageContext.request.contextPath }/js/jquery-3.2.1.js"></script>
    <script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
    <script type="text/javascript">
        function login(){
            document.login.action="${pageContext.request.contextPath}/login.action";
            document.login.submit();
        }
    </script>
</head>
