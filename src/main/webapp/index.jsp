<%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2017/6/6
  Time: 21:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>index page</title>
</head>
<h1>登录<%=session.getId()%></h1>
<body>
<form action="login.jsp" method="post">
  <input type="text" name="mobile" placeholder="手机号"><br>
  <input type="password" name="password" placeholder="密码"><br>
  <input type="submit" value="登录">
</form>
<p>
  <%
    String message = (String) request.getAttribute("massage");
    if (message !=null){
        out.print(message);

    }
  %>
</p>
<a href="sigunp.jsp">注册</a>
</body>
</html>