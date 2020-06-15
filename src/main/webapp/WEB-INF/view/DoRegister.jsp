<%--
  Created by IntelliJ IDEA.
  User: 11847
  Date: 2020/6/3
  Time: 14:00
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
    <jsp:useBean id="user2" class="com.saltedfish.entity.User"></jsp:useBean>
    <jsp:setProperty name="user2" property="*"></jsp:setProperty>
    <jsp:setProperty name="user2" property="password"></jsp:setProperty>
    <%
        UserDAO dao=new UserDAO();
        out.println(dao.register(user2));
    %>

</head>
<body>

</body>
</html>