<%--
  Created by IntelliJ IDEA.
  User: kangdy25
  Date: 2024. 10. 7.
  Time: 오후 10:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<html>
<head>
    <title>page 지시어 - errorPage, isErrorPage 속성</title>
</head
<body>
  <%
    int myAge = Integer.parseInt(request.getParameter("age")) + 10;
    out.println("10년 후 당신의 나이는 " + myAge + "입니다.");
  %>
</body>
</html>
