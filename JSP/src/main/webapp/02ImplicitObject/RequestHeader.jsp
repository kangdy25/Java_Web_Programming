<%--
  Created by IntelliJ IDEA.
  User: kangdy25
  Date: 2024. 10. 9.
  Time: 오후 5:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.Enumeration" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>내장 객체 - Request</title>
</head>
<body>
    <h2>3. 요청 헤더 정보 출력하기</h2>
    <%
        Enumeration headers = request.getHeaderNames();
        while (headers.hasMoreElements()) {
          String headerName = (String)headers.nextElement();
          String headerValue = request.getHeader((headerName));
          out.print("헤더명 : " + headerName + ", 헤더값 : " + headerValue + "<br/>");
        }
    %>
    <p>이 파일을 직접 실행하면 referer 정보는 출력되지 않습니다.</p>
</body>
</html>
