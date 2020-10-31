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
    <link rel="stylesheet " href="./css/shop-cart.css">
    <link rel="stylesheet"  href="./css/nav.css">
    <script src="./js/change-bakcground.js"></script>
</head>
<body>


<div class="panel panel-default" id="n">
    <div class="panel-heading">订单</div>
    <div class="tab">
        <table class="table table-bordered ">

            <tr>
                <td><strong>流水号</strong></td>
                <td><strong>商品ID</strong></td>
                <td><strong>数量</strong></td>
                <td><strong>买家</strong></td>
                <td><strong>卖家</strong></td>
                <td><strong>删除</strong></td>
                <td></td>
            </tr>
            <tbody>
            <c:forEach items="${buys}" var="buy">
                <tr>
                    <td>${buy.buyid}</td>
                    <td>${buy.articleid} </td>
                    <td>${buy.buynum} </td>
                    <td>${buy.buyname} </td>
                    <td>${buy.ownid} </td>
                    <td><button type="button" class="btn btn-danger" onclick=location.href="Deletesell?buyid=${buy.buyid}">删除</button></td>
                    <td><button type="button" class="btn btn-danger" onclick=location.href="toarticle?id=${buy.articleid}">详细信息</button></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

<div>
    <button onclick="change()" class="c">更换背景</button>
</div>

</body>
</html>
