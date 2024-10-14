<%--
  Created by IntelliJ IDEA.
  User: kangdy25
  Date: 2024. 10. 14.
  Time: 오후 11:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%
  String chkVal = request.getParameter("inactiveToday");

  if (chkVal != null && chkVal.equals("1")) {
    Cookie cookie = new Cookie("PopupClose", "off");
    cookie.setPath(request.getContextPath());
    cookie.setMaxAge(60*60*24);
    response.addCookie(cookie);
    out.println("쿠키 : 하루 동안 열지 않음");
  }
%>
