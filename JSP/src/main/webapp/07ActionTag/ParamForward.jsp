<%--
  Created by IntelliJ IDEA.
  User: kangdy25
  Date: 2024. 10. 24.
  Time: 오전 9:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>액션 태크 - param</title>
</head>
<body>
    <jsp:useBean id="person" class="common.Person" scope="request" />
    <h2>포워드된 페이지에서 매개변수 확인</h2>
    <ul>
        <li><jsp:getProperty name="person" property="name"/></li>
        <li>나이 : <jsp:getProperty name="person" property="age"/></li>
        <li>본명 : <%= request.getParameter("param1") %></li>
        <li>출생 : <%= request.getParameter("param2") %></li>
        <li>특징 : <%= request.getParameter("param3") %></li>
    </ul>
    <jsp:include page="inc/ParamInclude.jsp">
        <jsp:param name="loc1" value="Pride of London"/>
        <jsp:param name="loc2" value="Chelsea"/>
    </jsp:include>
</body>
</html>
