<%--
  Created by IntelliJ IDEA.
  User: kangdy25
  Date: 2024. 10. 24.
  Time: 오전 9:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<h2>인클루드된 페이지에서 매개변수 확인</h2>
<%= request.getParameter("loc1") %>에
<%= request.getParameter("loc2") %>가 있습니다.
</>