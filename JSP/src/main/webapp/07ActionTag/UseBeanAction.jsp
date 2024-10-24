<%--
  Created by IntelliJ IDEA.
  User: kangdy25
  Date: 2024. 10. 23.
  Time: 오후 6:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>액션 태그 - UseBean</title>
</head>
<body>
    <h3>액션 태그로 폼값 한 번에 받기</h3>
    <jsp:useBean id="person" class="common.Person" />
    <jsp:setProperty property="*" name="person"/>
    <ul>
        <li>이름 : <jsp:getProperty name="person" property="name"/></li>
        <li>나이 : <jsp:getProperty name="person" property="age"/></li>
    </ul>
</body>
</html>
