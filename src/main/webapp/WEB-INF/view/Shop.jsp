<%--
  Created by IntelliJ IDEA.
  User: 11847
  Date: 2020/6/12
  Time: 10:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <script src="./js/jquery-3.4.0.min.js"></script>
    <link rel="stylesheet" href="./css/bootstrap.css">
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <link rel="stylesheet " href="./css/my.css">
    <script src="./js/bootstrap.min.js"></script>
</head>
<body>

<div class="bg">
    <div class="con1">
        <form class="form-horizontal" role="form" action="shopadd" method="post">

            <div class="form-group">
                <label  class="col-sm-2 control-label"> 填写购买信息</label>
                <div class="col-sm-10">
                    ID: ${a.id}    <input type="hidden" name="id" value="${a.id}">
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-10">
                    名称:${a.name}
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-10">
                    价格:${a.price}
                </div>
            </div>
            <div class="form-group">
                <label for="shopid" class="col-sm-2 control-label">购物号</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" name="shopid" id="shopid" placeholder="购物号">
                </div>
            </div>
            <div class="form-group">
                <label for="num" class="col-sm-2 control-label">数量</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" name="num" id="num" placeholder="数量" value="${a.num}">
                </div>
            </div>

            <div class="form-group">
                <label for="shopowner" class="col-sm-2 control-label">用户名</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" name="shopowner" id="shopowner" placeholder="输入您的用户名" >
                </div>
            </div>

            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <button type="submit" class="btn btn-primary" >确认</button>
                </div>
            </div>

        </form>
        <div>${shopmsg}</div>
    </div>
</div>
</body>
</html>