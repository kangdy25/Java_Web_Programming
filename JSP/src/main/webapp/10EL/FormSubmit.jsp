<%--
  Created by IntelliJ IDEA.
  User: kangdy25
  Date: 2024. 11. 7.
  Time: 오후 4:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>표현 언어(EL) - 폼값 처리</title>
</head>
<body>
    <h2>폼값 전송하기</h2>
    <form name="frm" method="post" action="FormResult.jsp">
        이름 : <input type="text" name="name"/><br/>
        성별 : <input type="radio" name="gender" value="Man"/>남자
               <input type="radio" name="gender" value="Woman"/>여자<br/>
        학력 :
            <select name="grade">
                <option value="ele">초딩</option>
                <option value="mid">중딩</option>
                <option value="high">고딩</option>
                <option value="uni">대딩</option>
            </select><br/>
        관심 사항 :
            <input type="checkbox" name="inter" value="pol"/>정치
            <input type="checkbox" name="inter" value="ent"/>경제
            <input type="checkbox" name="inter" value="eco"/>연예
            <input type="checkbox" name="inter" value="spo"/>운동<br/>
        <input type="submit" value="전송하기" />
    </form>
</body>
</html>
