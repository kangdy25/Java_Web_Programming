<%--
  Created by IntelliJ IDEA.
  User: kangdy25
  Date: 2024. 10. 26.
  Time: 오후 5:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="./IsLoggedIn.jsp" %>
<html>
<head>
    <title>회원제 게시판</title>
    <script type="text/javascript">
      function validateForm(form) {
        if (form.title.value == "") {
          alert("제목을 입력하세요.");
          form.title.focus();
          return false;
        }
        if (form.content.value == "") {
          alert("내용을 입력하세요.");
          form.content.focus();
          return false;
        }
      }
    </script>
</head>
<body>
    <jsp:include page="../Common/Link.jsp" />
    <h2>회원제 게시판 - 글쓰기 (Write)</h2>
    <form name="writeFrm" method="post" action="WriteProcess.jsp" onsubmit="return validateForm(this);">
        <table border="1" width="90%">
          <tr>
            <td>제목</td>
            <td>
              <input type="text" name="title" style="width: 90%;"/>
            </td>
          </tr>
          <tr>
            <td>내용</td>
            <td>
              <textarea name="content" style="width: 90%; height: 100px;"></textarea>
            </td>
          </tr>
          <tr>
            <td colspan="2" align="center">
              <button type="submit">작성 완료</button>
              <button type="reset">다시 입력</button>
              <button type="button" onclick="location.href='List.jsp';">목록 보기</button>
            </td>
          </tr>
        </table>
    </form>
</body>
</html>