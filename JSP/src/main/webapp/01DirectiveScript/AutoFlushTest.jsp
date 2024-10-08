<%--
  Created by IntelliJ IDEA.
  User: kangdy25
  Date: 2024. 10. 8.
  Time: 오전 11:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" buffer="1kb" autoFlush="false" %>
<html>
<head>
    <title>page 지시어 - buffer, autoFlush 속성</title>
</head>
<body>
<%
    for (int i = 1; i <= 100; i++) {
        out.println("abcde12345");
    }
%>
</body>
</html>
