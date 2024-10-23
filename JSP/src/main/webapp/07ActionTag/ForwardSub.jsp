<%--
  Created by IntelliJ IDEA.
  User: kangdy25
  Date: 2024. 10. 23.
  Time: 오전 11:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>액션 태그 - forward</title>
</head>
<body>
    <h2>포워드 결과</h2>
    <ul>
        <li>page 영역 : <%= pageContext.getAttribute("pAttr")%></li>
    </ul>
    <ul>
        <li>request 영역 : <%= request.getAttribute("rAttr")%></li>
    </ul>
</body>
</html>
