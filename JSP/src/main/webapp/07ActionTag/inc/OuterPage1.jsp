<%--
  Created by IntelliJ IDEA.
  User: kangdy25
  Date: 2024. 10. 23.
  Time: 오전 11:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>OuterPage</title>
</head>
<body>
    <h2>외부 파일 1</h2>
    <%
        String newVar1 = "고구려 세운 동명왕";
    %>
    <ul>
        <li> page 영역 속성 : <%= pageContext.getAttribute("pAttr") %></li>
        <li> request 영역 속성 : <%= request.getAttribute("rAttr")%></li>
    </ul>
</body>
</html>
