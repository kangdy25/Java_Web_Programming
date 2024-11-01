<%--
  Created by IntelliJ IDEA.
  User: kangdy25
  Date: 2024. 10. 28.
  Time: 오후 1:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="model1.board.BoardDTO" %>
<%@ page import="model1.board.BoardDAO" %>
<%@ page import="common.Person" %>
<%@ include file="./IsLoggedIn.jsp"%>
<%
  String num = request.getParameter("num");
  BoardDTO dto =new BoardDTO();
  BoardDAO dao= new BoardDAO(application);
  dto = dao.selectView(num);

  // 로그인된 사용자 ID 얻기
  String sessionId = session.getAttribute("UserId").toString();

  int delResult = 0;

  if (sessionId.equals(dto.getId())) {
    dto.setNum(num);
    delResult = dao.deletePost(dto);
    dao.close();

    if (delResult == 1) {
      JSFunction.alertLocation("삭제되었습니다.", "List.jsp", out);
    } else {
      JSFunction.alertBack("삭제에 실패하였습니다.", out);
    }
  } else {
    JSFunction.alertBack("본인만 삭제할 수 있습니다.", out);
    return;
  }
%>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
