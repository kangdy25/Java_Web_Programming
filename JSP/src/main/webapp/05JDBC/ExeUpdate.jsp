<%--
  Created by IntelliJ IDEA.
  User: kangdy25
  Date: 2024. 10. 19.
  Time: 오후 2:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="common.JDBCConnect" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Connection" %>

<html>
<head>
    <title>JDBC</title>
</head>
<body>
    <h2>회원 추가 테스트(ExecuteUpdate() 사용)</h2>
    <%
        // DB에 연결
        JDBCConnect jdbc = new JDBCConnect();

        // 테스트용 입력값 준비
        String id = "test1";
        String pass = "1111";
        String name = "테스트 1 회원";

        // 쿼리문 생성
        String sql = "INSERT INTO member VALUES (?, ?, ?, sysdate)";
        PreparedStatement psmt = jdbc.con.prepareStatement(sql);
        psmt.setString(1, id);
        psmt.setString(2, pass);
        psmt.setString(3, name);

        // 쿼리 수행
        int inResult = psmt.executeUpdate();
        out.println(inResult + "행이 입력되었습니다.");

        // 연결 닫기
        jdbc.close();
    %>
</body>
</html>
