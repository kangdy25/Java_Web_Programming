<%--
  Created by IntelliJ IDEA.
  User: kangdy25
  Date: 2024. 10. 7.
  Time: 오후 10:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>
<html>
<head>
    <title>Page 지시어 - import 속성</title>
</head>
<body>
    <%
        Date today = new Date();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        String todayStr = dateFormat.format(today);
        out.println("오늘 날짜 : " + todayStr);
    %>
</body>
</html>
