
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
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
            <form class="form-horizontal" role="form" action="Add" method="post">

                <div class="form-group">
                    <label for="id" class="col-sm-2 control-label"></label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control"  name="id" id="id" placeholder="id">
                    </div>
                </div>

                <div class="form-group">
                    <label for="name" class="col-sm-2 control-label">名称</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="name" id="name" placeholder="名称">
                    </div>
                </div>

                <div class="form-group">
                    <label for="price" class="col-sm-2 control-label">价格</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="price" id="price" placeholder="价格">
                    </div>
                </div>
                <div class="form-group">
                    <label for="num" class="col-sm-2 control-label">数量</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="num" id="num" placeholder="数量">
                    </div>
                </div>

                <div class="form-group">
                    <label for="ownid" class="col-sm-2 control-label">卖家名字</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="ownid" id="ownid" placeholder="卖家名字">
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-primary" >确认</button>
                    </div>
                </div>


            </form>
            <div>${msg}</div>
        </div>
    </div>
</body>
</html>