<%--
  Created by IntelliJ IDEA.
  User: kangdy25
  Date: 2024. 10. 11.
  Time: 오후 3:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Session 영역</title>
</head>
<body>
    <h2>페이지 이동 후 session 영역의 속성 읽기</h2>
    <%
        ArrayList<String> lists = (ArrayList<String>)session.getAttribute("lists");
        for (String str : lists) {
            out.print(str + "<br/>");
        }
    %>
</body>
</html>
