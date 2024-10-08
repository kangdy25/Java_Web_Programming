<%--
  Created by IntelliJ IDEA.
  User: kangdy25
  Date: 2024. 10. 8.
  Time: 오전 11:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.time.LocalDateTime" %>
<%@ page import="java.time.LocalDate" %>

<%
    LocalDate today = LocalDate.now();
    LocalDateTime tommorow = LocalDateTime.now().plusDays(1);
%>