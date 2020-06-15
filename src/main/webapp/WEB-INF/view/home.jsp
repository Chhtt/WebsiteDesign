<%--
  Created by IntelliJ IDEA.
  User: 11847
  Date: 2020/6/1
  Time: 14:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en" id="bs">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="./css/home.css" />
    <title>Document</title>
</head>

<body>
    <script src="js/1.js"></script>
    <div class="bg">
        <div class="list">
            <ul>
                <li><a href="home.jsp"> 主页 </a></li>
                <li><a href="../../myself.html">个人介绍 </a></li>
                <li> <a href="list?username=${user.name}">物品展示</a ></li>
                <li><a href="userlist">   所有商家</a></li>
                <li> <input value="一键变色" type="button" onclick="changestyle()" ></li>
            </ul>
        </div>

        <div class="main">
            
            <div class="left">
                <div class="pho">
                    <img src="../../picture/touxiang.png" alt="">
                </div>
                <p>学号：<br>55180609 <br> 姓名：<br>陈昊天</p>
            </div>

            <div class="right">
                <h1 class="center">
                    Welcome To My Page<br />
                    I Will Show You Myself<br />
                </h1>
                <br/>
                <br/>
                <p>
                    我是吉林大学的一名软件系的学生<br />
                    这是我一直使用的头像 其中的“昊”字取自我的名字<br />
                    “昊者，元气博大之貌 ” -《疏》
                </p>
            </div>
        </div>
    </div>

</body>
</html>