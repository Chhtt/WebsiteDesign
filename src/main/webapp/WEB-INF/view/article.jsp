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
    <link rel="stylesheet" href="./css/detail.css">
    <link rel="stylesheet " href="./css/nav.css">
    <script src="./js/change-bakcground.js"></script>
</head>
<body>


   <div class="b">
       <img id="i" src="./picture/${a.id}/001.jpg" class="b" onclick="change_img()">
   </div>


   <div class="c">
       <p>${a.name}</p>
       <p>￥${a.price}</p>
       <button type="button" class="btn btn-success" onclick=location.href="shopadd?id=${a.id}"> 加入购物车</button>
       <button type="button" class="btn btn-info" onclick=location.href="buy?id=${a.id}"> 立即购买</button>
   </div>



   <script type="text/javascript">
       var y=1;
       function change_img(){
           img=document.getElementById("i");
           switch(y){
               case 1:
                   img.src="./picture/${a.id}/001.jpg";
                   break;
               case 2:
                   img.src="./picture/${a.id}/002.jpg";
                   break;
               case 3:
                   img.src="./picture/${a.id}/003.jpg";
                   break;
               case 4:
                   img.src="./picture/${a.id}/004.jpg";
                   break;
           }
           ++y;
           if (y==5)  y=1;
       }
   </script>
</body>
</html>
