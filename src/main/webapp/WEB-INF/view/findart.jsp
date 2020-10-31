
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
    <link rel="stylesheet"  href="./css/shop-cart.css">
    <link rel="stylesheet"  href="./css/nav.css" >
    <link rel="stylesheet"  href="./css/sell-sea.css" >
    <script src="./js/change-bakcground.js"></script>
</head>
<body>

<div id="t">
    <form class="form-horizontal" role="form" action="findart" method="post">

        <div class="form-group">
            <div class="input-group input-group-lg" id="t3">
                <input type="text" class="form-control" placeholder="请输入要查询物品的ID" aria-describedby="basic-addon2" name="id" id="id">
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-success btn-lg" id="t4">搜索</button>
            </div>
        </div>
    </form>
    <div>${findmsg}</div>
</div>


</body>
</html>