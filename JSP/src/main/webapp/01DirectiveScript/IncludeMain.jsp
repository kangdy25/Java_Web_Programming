<%--
  Created by IntelliJ IDEA.
  User: kangdy25
  Date: 2024. 10. 8.
  Time: 오전 11:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="IncludeFile.jsp"%>
<html>
<head>
    <title>include 지시어</title>
</head>
<body>
<%
  out.println("오늘 날짜 : " + today);
  out.println("<br/>");
  out.println("내일 날짜 : " + tommorow);
%>
</body>
</html>
