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
    <link rel="stylesheet" href="./css/bootstrap-1.css">
    <link rel="stylesheet"  href="./css/nav.css" >
    <link rel="stylesheet"  href="./css/shop-cart.css" >
    <script src="./js/change-bakcground.js"></script>
</head>
</head>
<body>
    <div class="panel panel-default" id="n">
        <div class="panel-heading">个人上架商品列表</div>
        <table class="table ">
            <thead>
            <tr>
                <td><strong>ID</strong></td>
                <td><strong>商品名</strong></td>
                <td><strong>单价</strong></td>
                <td><strong>数量</strong></td>
                <td><strong>删除</strong></td>
                <td><strong>修改</strong></td>
                <td></td>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${art}" var="a">
                <tr>
                    <td>${a.id}</td>
                    <td>${a.name} </td>
                    <td>${a.price} </td>
                    <td>${a.num} </td>
                    <td><button type="button" class="btn btn-danger" onclick=location.href="Delete?id=${a.id}"> 删除</button></td>
                    <td><button type="button" class="btn btn-danger" onclick=location.href="Update?id=${a.id}">修改</button></td>
                    <td><button type="button" class="btn btn-danger" onclick=location.href="toarticle?id=${a.id}">详细信息</button></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
        <form class="form-horizontal" role="form" action="toadd" method="post">
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="submit" class="btn btn-primary" >添加</button>
                </div>
            </div>
        </form>
    </div>

    <div>
        <button onclick="change()" class="c">更换背景</button>
    </div>

</body>
</html>
