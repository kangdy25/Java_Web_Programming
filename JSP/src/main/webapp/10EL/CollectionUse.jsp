<%--
  Created by IntelliJ IDEA.
  User: kangdy25
  Date: 2024. 11. 7.
  Time: 오후 5:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="common.Person" %>
<html>
<head>
    <title>표현 언어(EL) - 컬렉션</title>
</head>
<body>
    <h2>List 컬렉션</h2>
    <%
      List<Object> aList = new ArrayList<Object>();
      aList.add("Cobham");
      aList.add(new Person("Neto", 7));
      pageContext.setAttribute("Chelsea", aList);
    %>
    <ul>
      <li>0번째 요소 : ${ Chelsea[0] }</li>
      <li>1번째 요소 : ${ Chelsea[1].name }, ${Chelsea[1].age}</li>
      <li>2번째 요소 : ${ Chelsea[2] }</li>
    </ul>
    <h2>Map 컬렉션</h2>
    <%
      Map<String, String> map = new HashMap<String, String>();
      map.put("한글", "훈민정음");
      map.put("Eng", "English");
      pageContext.setAttribute("King", map);
    %>
    <ul>
      <li>영문 Key : ${ King["Eng"]}, ${King['Eng']}, ${King.Eng}</li>
      <li>한글 Key : ${ King["한글"]}, ${King['한글']}, \${King.한글}</li>
    </ul>
</body>
</html>
