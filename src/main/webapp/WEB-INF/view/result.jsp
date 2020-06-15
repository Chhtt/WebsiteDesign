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
    <script src="./js/jquery-3.4.0.min.js"></script>
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
                <th>id </th>
                <th>name </th>
                <th>price </th>
                <th>number </th>
                <th>delete</th>
                <th>update</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${art}" var="a">
            <tr>
                    <td>${a.id}</td>
                    <td>${a.name} </td>
                    <td>${a.price} </td>
                    <td>${a.num} </td>
                     <td><a href ="Delete?id=${a.id}"> 删除</a></td>
                    <td><a href="Update?id=${a.id}"> 修改</a> </td>
            </tr>
            </c:forEach>
        </tbody>
    </table>

        <form class="form-horizontal" role="form" action="add.jsp" method="post">
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="submit" class="btn btn-primary" >添加</button>
                </div>
            </div>
        </form>
    </div>



</body>
</html>
