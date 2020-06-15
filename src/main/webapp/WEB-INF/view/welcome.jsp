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
    <link rel="stylesheet" type="text/css" href="./css/home.css" />
    <title>Document</title>
</head>
<body>
    <div class="bg2">
        <div class="list">
            <ul>
                <li><a href="welcome"> 主页 </a></li>
                <li> <a href="MyList?username=${user.name}">物品展示</a ></li>
                <li><a href="userlist">   所有商家</a></li>

            </ul>
        </div>

        <div class="main">
            <div class="left">
                <div class="pho">
                    <img src="./picture/moren.jpg" alt="">
                </div>
                <p>姓名：<br>${user.name}</p>
            </div>

            <div class="right">
                <h1 class="center">
                    Welcome To My Page<br />
                    I Will Show You Myself<br />
                </h1>
                <br/>
                <br/>
                <p>
                    商家简介
                </p>
            </div>
        </div>
    </div>



</body>
</html>