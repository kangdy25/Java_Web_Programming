<%--
  Created by IntelliJ IDEA.
  User: kangdy25
  Date: 2024. 10. 11.
  Time: 오후 3:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="common.Person" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<h4>Include 페이지</h4>
<%
    int pInteger2 = (Integer)(pageContext.getAttribute("pageInteger"));
    // String pString2 = pageContext.getAttribute("pageString").toString();
    Person pPerson2 = (Person) (pageContext.getAttribute("pagePerson"));
%>
<ul>
    <li>Integer 객체 : <%= pInteger2 %></li>
    <li>String 객체 : <%= pageContext.getAttribute("pageString") %></li>
    <li>Person 객체 : <%= pPerson2.getName() %>, <%= pPerson2.getAge() %></li>
</ul>