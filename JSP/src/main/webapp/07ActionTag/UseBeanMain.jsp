<%--
  Created by IntelliJ IDEA.
  User: kangdy25
  Date: 2024. 10. 23.
  Time: 오후 6:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>액션 태그 - UseBean</title>
</head>
<body>
    <h2>useBean 액션 태그</h2>
    <h3>자바빈즈 생성하기</h3>
    <jsp:useBean id="person" class="common.Person" scope="request"/>

    <h3>setProperty 액션 태그로 자바빈즈 속성 지정하기</h3>
    <jsp:setProperty name="person" property="name" value="홍길동"/>
    <jsp:setProperty name="person" property="age" value="41"/>

    <h3>getProperty 액션 태그로 자바빈즈 속성 읽기</h3>
    <ul>
        <li>이름 : <jsp:getProperty name="person" property="name"/></li>
        <li>이름 : <jsp:getProperty name="person" property="age"/></li>
    </ul>
</body>
</html>
