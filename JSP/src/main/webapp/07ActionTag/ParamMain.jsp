<%--
  Created by IntelliJ IDEA.
  User: kangdy25
  Date: 2024. 10. 23.
  Time: 오후 6:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
    String pValue = "축구선수";
%>
<html>
<head>
    <title>액션 태그 - param</title>
</head>
<body>
    <jsp:useBean id="person" class="common.Person" scope="request" />
    <jsp:setProperty name="person" property="name" value="Palmer" />
    <jsp:setProperty name="person" property="age" value="24" />
    <jsp:forward page="ParamForward.jsp?param1=Cole">
        <jsp:param name="param2" value="England"/>
        <jsp:param name="param3" value="<%=pValue%>"/>
    </jsp:forward>
</body>
</html>
