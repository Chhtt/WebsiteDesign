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
    <link rel="stylesheet" href="./css/bootstrap.css">
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <link rel="stylesheet " href="./css/my.css">
    <link rel="stylesheet"  href="./css/home.css">
    <script src="./js/bootstrap.min.js"></script>
</head>
<body>



<div class="tab">
    <table class="table table-bordered ">
        <thead>
        <tr>
            <th>name </th>
            <th>查看</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${use}" var="u">
            <tr>
                <td>${u.name}</td>
                <td><a href="Look?name=${u.name}"> 查看</a> </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

</div>



</body>
</html>
