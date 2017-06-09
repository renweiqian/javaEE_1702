<%@ page import="java.sql.Connection" %>
<%@ page import="com.mysql.jdbc.Driver" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %><%--
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
<pre>
      request:
        getRemoteAddr()
        getParameter()
        getRequestDispatcher().forward()
        setAttribute()
        getAttribute()
    response:
        sendRedirect()

</pre>
<body>
<%
    String mobile = request.getParameter("mobile");
    String password = request.getParameter("password");

    new Driver();
    Connection connection = DriverManager.getConnection("jdbc:mysql:///?user=root&password=system");

    String sql= "SELECT * FROM db_javaee.user WHERE mobile=? AND password=?";
    PreparedStatement statement = connection.prepareStatement(sql);
    statement.setString(1, mobile);
    statement.setString(2, password);
    ResultSet resultSet = statement.executeQuery();

    if (resultSet.next()) {
        // success
        //System.out.println(resultSet.getString("nick"));

        session.setAttribute("nick",resultSet.getString("nick"));
        request.getRequestDispatcher("home.jsp").forward(request,response);
    } else {
        request.setAttribute("message", "用户名或密码错误");
        request.getRequestDispatcher("index.jsp")
                .forward(request,response);

    }

    resultSet.close();
    statement.close();
    connection.close();
%>
</body>
</html>