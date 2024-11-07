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
    <h2>영역을 통해 전달된 객체 읽기</h2>
    <ul>
      <li>Person 객체 => 이름 : ${PersonObj.name}, 등번호 : ${PersonObj.age}</li>
      <li>String 객체 => ${requestScope.StringObj}</li>
      <li>Integer 객체 => ${IntegerObj}</li>
    </ul>
    <h2>매개변수로 전달된 값 읽기</h2>
    <ul>
      <li>${param.firstNum + param['secondNum']}</li>
      <li>${param.firstNum} + ${param["secondNum"]}</li>
    </ul>
</body>
</html>
