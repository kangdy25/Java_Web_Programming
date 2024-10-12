<%--
  Created by IntelliJ IDEA.
  User: kangdy25
  Date: 2024. 10. 11.
  Time: 오후 4:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ page import="common.Person" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Application 영역</title>
</head>
<body>
    <h2>Application 영역의 공유</h2>
    <%
        Map<String, Person> maps = new HashMap<>();
        maps.put("player1", new Person("Palmer", 20));
        maps.put("player2", new Person("Felix", 14));
        application.setAttribute("maps", maps);
    %>
    Application 영역에 속성이 저장되었습니다.
</body>
</html>
