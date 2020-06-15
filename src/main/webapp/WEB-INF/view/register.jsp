<%--
  Created by IntelliJ IDEA.
  User: 11847
  Date: 2020/6/3
  Time: 13:50
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
    <title>Document</title>
</head>
<body>
    <div class="contianer">
        <h3>用户注册</h3>
            <form method="post" action="DoRegister.jsp">
                <br>
                用户名 <input type="text" name="username">
                <br>
                密码 <input type="password" name="password">
                <br>
                <input type="submit" value="提交">
            </form>

    </div>
</body>
</html>

