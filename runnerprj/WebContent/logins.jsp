<%--
  Created by IntelliJ IDEA.
  User: 白晨皓
  Date: 2018/11/30
  Time: 16:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login</title>
</head>
<body>
<form method="post" action="/websocket/login">
    <p>账号:<input type="text" name="username"></p>
    <p>密码:<input type="password" name="passwd"></p><br>
    <input type="submit" value="登陆">
</form>
</body>
</html>
