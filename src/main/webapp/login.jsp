<%@ page import="com.mysql.jdbc.Driver" %><%--
  Created by IntelliJ IDEA.
  User: asus
  Date: 2017/6/7
  Time: 14:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String mobile = request.getParameter("mobile");
    String password = request.getParameter("password");
    new Driver();
%>
</body>
</html>
