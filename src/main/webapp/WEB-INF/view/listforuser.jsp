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
    <link rel="stylesheet " href="./css/goods.css">
    <link rel="stylesheet"  href="./css/nv.css">
    <script src="./js/change-bakcground.js"></script>
</head>
<body>

<div class="b">
    <table>
<c:forEach items="${art}" var="a" varStatus="status">
    <c:if test="${status.index%2==0}">
    <tr>
        </c:if>
        <td><a href="toarticle?id=${a.id}"><img src="./picture/${a.id}/001.jpg"></a></td>

            <c:if test="${status.index%2!=0}">
            </tr>
            </c:if>
    </c:forEach>
    </table>
</div>

<div>
    <button onclick="change()" class="c">更换背景</button>
</div>
<a href="#top" class="d" id="k">返回顶部</a>
</body>
</html>
