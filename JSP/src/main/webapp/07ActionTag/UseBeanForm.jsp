<%--
  Created by IntelliJ IDEA.
  User: kangdy25
  Date: 2024. 10. 23.
  Time: 오후 6:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>액션 태그 - UseBean</title>
</head>
<body>
    <h2>액션 태그로 폼값 한 번에 받기</h2>
    <form method="post" action="UseBeanAction.jsp">
        이름 : <input type="text" name="name"/><br />
        나이 : <input type="text" name="age"/><br />
        <input type="submit" value="폼값 전송"/>
    </form>
</body>
</html>
