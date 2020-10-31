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
<body>


<div class="panel panel-default" id="n">
    <div class="panel-heading">购物车</div>
    <table class="table ">
        <thead>
        <tr>
            <td><strong>名称</strong></td>
            <td><strong>数量</strong></td>
            <td><strong>单价</strong></td>
            <td><strong>总价</strong></td>
            <td><strong>购买</strong></td>
            <td><strong>删除</strong></td>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${shops}" var="shop">
            <tr>
                <td>${shop.name}</td>
                <td>${shop.num} </td>
                <td>${shop.price} </td>
                <td>${shop.sum} </td>
                <td><button type="button" class="btn btn-danger" onclick=location.href="buyfromshop?shopid=${shop.shopid}"> 购买</button></td>
                <td><button type="button" class="btn btn-danger" onclick=location.href="Deleteshop?shopid=${shop.shopid}">删除</button></td>
                <td><button type="button" class="btn btn-danger" onclick=location.href="toarticle?id=${shop.artid}">详细信息</button></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

</div>

<div>
    <button onclick="change()" class="c">更换背景</button>
</div>

</body>
</html>
