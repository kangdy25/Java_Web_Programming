<%--
  Created by IntelliJ IDEA.
  User: kangdy25
  Date: 2024. 10. 14.
  Time: 오후 11:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cookie Result</title>
</head>
<body>
    <h2>쿠키값 확인하기(쿠키가 생성된 이후의 페이지)</h2>
    <%
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
          for (int i = 0; i < cookies.length; i++) {
              String cookieName = cookies[i].getName();
              String cookieValue = cookies[i].getValue();
              out.println(String.format("쿠키명 : %s - 쿠키값 : %s<br/>", cookieName, cookieValue));
          }
        }
    %>
</body>
</html>
