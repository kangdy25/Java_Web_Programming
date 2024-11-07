<%--
  Created by IntelliJ IDEA.
  User: kangdy25
  Date: 2024. 11. 7.
  Time: 오후 4:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  pageContext.setAttribute("scopeValue", "페이지 영역");
  request.setAttribute("scopeValue", "리퀘스트 영역");
  session.setAttribute("scopeValue", "세션 영역");
  application.setAttribute("scopeValue", "어플리케이션 영역");
%>
<html>
<head>
    <title>표현 언어(EL) - 내장 객체</title>
</head>
<body>
    <ul>
        <li>페이지 영역 : ${ pageScope.scopeValue }</li>
        <li>리퀘스트 영역 : ${ requestScope.scopeValue }</li>
        <li>세션 영역 : ${ sessionScope.scopeValue }</li>
        <li>어플리케이션 영역 : ${ applicationScope.scopeValue }</li>
    </ul>
    <h3>영역 지정 없이 속성 읽기</h3>
    <ul>
      <li>${ scopeValue }</li>
    </ul>
    <jsp:forward page="ImplicitForwardResult.jsp"/>
</body>
</html>
