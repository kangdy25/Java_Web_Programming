<%--
  Created by IntelliJ IDEA.
  User: kangdy25
  Date: 2024. 11. 7.
  Time: 오후 4:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="common.Person" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>표현 언어(EL) - 객체 매개변수</title>
</head>
<body>
    <%
      request.setAttribute("PersonObj", new Person("Palmer", 20));
      request.setAttribute("StringObj", "나는 문자열");
      request.setAttribute("IntegerObj", Integer.valueOf(99));
    %>
    <jsp:forward page="ObjectResult.jsp">
      <jsp:param value="10" name="firstNum"/>
      <jsp:param value="20" name="secondNum"/>
    </jsp:forward>
</body>
</html>
