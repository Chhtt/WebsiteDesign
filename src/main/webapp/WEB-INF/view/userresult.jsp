<%--
  Created by IntelliJ IDEA.
  User: 11847
  Date: 2020/6/11
  Time: 14:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>result</title>
    <script src="${pageContext.request.contextPath}/js/jquery-3.4.0.min.js"></script>
    <link rel="stylesheet" href="./css/bootstrap-1.css">
    <link rel="stylesheet" href="./css/shop-cart.css">
    <link rel="stylesheet " href="./css/nav.css">
    <script src="./js/change-bakcground.js"></script>
</head>
<body>
<div class="panel panel-default" id="n">
    <div class="panel-heading">用户管理</div>
    <table class="table">
        <tr>
            <td><strong>用户名</strong></td>
            <td></td>
            <td></td>
        </tr>
        <c:forEach items="${users}" var="user">
            <tr>
                <td>${user.name}</td>
                <td><button type="button" class="btn btn-success " onclick=location.href="Look?name=${user.name}" >查看</button></td>
                <td><button type="button" class="btn btn-danger" onclick=location.href="Deleteuser?name=${user.name}">注销</button></td>
            </tr>
        </c:forEach>
    </table>
</div>
<div>
    <button onclick="change()" class="c">更换背景</button>
</div>


</body>
</html>
