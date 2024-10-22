<%--
  Created by IntelliJ IDEA.
  User: kangdy25
  Date: 2024. 10. 22.
  Time: 오후 3:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // 방법 1: 회원인증정보 속성 삭제
    session.removeAttribute("UserId");
    session.removeAttribute("UserName");

    // 방법 2: 모든 속성 한꺼번에 삭제
    session.invalidate();

    // 속성 삭제 후 페이지 이동
    response.sendRedirect("LoginForm.jsp");
%>
