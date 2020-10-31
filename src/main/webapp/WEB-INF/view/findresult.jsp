<%--
  Created by IntelliJ IDEA.
  User: 11847
  Date: 2020/6/1
  Time: 14:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet"  href="./css/shop-cart.css">
    <link rel="stylesheet" href="./css/bootstrap-1.css">
    <link rel="stylesheet"  href="./css/nav.css" >
    <link rel="stylesheet"  href="./css/sell-sea-re.css">
    <script src="./js/change-bakcground.js"></script>
    <title>Document</title>
</head>
<body>


<div class="panel panel-default" id="n2">
    <div class="panel-heading">查询结果</div>
    <table class="table table-striped">
        <tr>
            <td><strong>id</strong></td>
            <td>${a1.id}</td>
        </tr>
        <tr>
            <td><strong>名字</strong></td>
            <td>${a1.name}</td>
        </tr>
        <tr>
            <td><strong>价格</strong></td>
            <td>￥${a1.price}</td>
        </tr>
        <tr>
            <td><strong>数量</strong></td>
            <td>${a1.num}</td>
        </tr>
        <tr>
            <td></td>
            <td><a href="toarticle?id=${a1.id}">详细信息</a></td>
        </tr>
    </table>
</div>
<div>
    <button onclick="change()" class="c">更换背景</button>
</div>
</body>
</html>