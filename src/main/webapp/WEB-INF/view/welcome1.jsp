
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
    <link rel="stylesheet"  href="./css/welcome.css">
    <link rel="stylesheet"  href="./css/nav.css" >
    <script src="./js/change-bakcground.js"></script>



</head>
<body>
<div class="z">
    <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand">${user.name}</a>


            </div>
            <div id="w3">
                <ul class="nav navbar-nav">
                    <li><a href="toindex"> 主页 </a></li>
                    <li><a href="findart"> 商品查询</a> </li>
                    <li><a href="listforuser">商品</a></li>
                    <li><a href="shoplist?name=${user.name}">购物车</a></li>
                    <li><a href="buylist?name=${user.name}">订单</a></li>
                    <li><a href="Logout?name=${user.name}">注销</a></li>
                </ul>
            </div>
        </div>
    </nav>
</div>

<span id="s">尊敬的${user.name}，欢迎您</span>

<div>
    <button onclick="change()" class="c">更换背景</button>
</div>



<div>
    <button onclick="change()" class="c">更换背景</button>
</div>



</body>
</html>