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
             <form class="form-horizontal" role="form" action="Update" method="post">

                 <div class="form-group">
                     <label  class="col-sm-2 control-label"> 修改信息</label>
                     <div class="col-sm-10">
                         ID: ${a.id}    <input type="hidden" name="id" value="${a.id}">
                     </div>
                 </div>

                 <div class="form-group">
                     <div class="col-sm-10">
                         名称：${a.name} <input  type="hidden" name="name" value="${a.name}">
                     </div>
                 </div>

                 <div class="form-group">
                     <label for="price" class="col-sm-2 control-label">价格</label>
                     <div class="col-sm-10">
                         <input type="text" class="form-control" name="price" id="price" placeholder="price" value="${a.price}">
                     </div>

                 </div>
                 <div class="form-group">
                     <label for="num" class="col-sm-2 control-label">数量</label>
                     <div class="col-sm-10">
                         <input type="text" class="form-control" name="num" id="num" placeholder="num" value="${a.num}">
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