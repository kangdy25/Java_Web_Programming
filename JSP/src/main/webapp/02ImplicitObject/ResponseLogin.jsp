<%--
  Created by IntelliJ IDEA.
  User: kangdy25
  Date: 2024. 10. 10.
  Time: 오후 10:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <title>내장 객체 - Response</title>
</head>
<body>
    <%
        String id = request.getParameter("user_id");
        String pwd = request.getParameter("user_pwd");
        if (id.equalsIgnoreCase("must") && pwd.equalsIgnoreCase("1234")) {
            response.sendRedirect("ResponseWelcome.jsp");
        } else {
            request.getRequestDispatcher("ResponseMain.jsp?loginErr=1").forward(request, response);
        }
    %>
</body>
</html>
