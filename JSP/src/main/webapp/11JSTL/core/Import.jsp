<%--
  Created by IntelliJ IDEA.
  User: kangdy25
  Date: 2024. 11. 8.
  Time: 오후 6:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head><title>JSTL - import</title></head>
<body>
<c:set var="requestVar" value="MustHave" scope="request" />
<c:import url="/11JSTL/inc/OtherPage.jsp" var="contents">
    <c:param name="user_param1" value="JSP" />
    <c:param name="user_param2" value="기본서" />
</c:import>

<h4>다른 문서 삽입하기</h4>
${contents }

<h4>외부 자원 삽입하기</h4>
<iframe src="../inc/GoldPage.jsp" style="width:100%;height:600px;"></iframe>
</body>
</html>