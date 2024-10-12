<%--
  Created by IntelliJ IDEA.
  User: kangdy25
  Date: 2024. 10. 11.
  Time: 오후 4:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.Set" %>
<%@ page import="java.util.Map" %>
<%@ page import="common.Person" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Application 영역</title>
</head>
<body>
    <h2>Application 영역의 속성 읽기</h2>
    <%
        Map<String, Person> maps = (Map<String, Person>)application.getAttribute("maps");
        Set<String> keys = maps.keySet();
        for (String key : keys) {
            Person person = maps.get(key);
            out.print(String.format("이름 : %s, 나이 : %d<br/>",
                    person.getName(), person.getAge()));
        }
    %>
</body>
</html>
