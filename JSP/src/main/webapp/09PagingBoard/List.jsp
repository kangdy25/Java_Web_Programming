<%--
  Created by IntelliJ IDEA.
  User: kangdy25
  Date: 2024. 10. 26.
  Time: 오후 2:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="model1.board.BoardDAO" %>
<%@ page import="model1.board.BoardDTO" %>
<%@ page import="utils.BoardPage" %>

<%
  // DAO를 생성해 DB에 연결
  BoardDAO dao = new BoardDAO(application);

  // 사용자가 입력한 검색 조건을 Map에 저장
  Map<String, Object> param = new HashMap<String, Object>();

  String searchField = request.getParameter("searchField");
  String searchWord = request.getParameter("searchWord");
  if (searchWord != null) {
    param.put("searchField", searchField);
    param.put("searchWord", searchWord);
  }

  int totalCount = dao.selectCount(param);

  // 페이지 처리 start

  // 전체 페이지 수 계산
  int pageSize = Integer.parseInt(application.getInitParameter("POSTS_PER_PAGE"));
  int blockPage = Integer.parseInt(application.getInitParameter("PAGES_PER_BLOCK"));
  int totalPage = (int)Math.ceil((double)totalCount / pageSize);

  // 현재 페이지 확인
  int pageNum = 1;
  String pageTemp = request.getParameter("pageNum");
  if (pageTemp != null && !pageTemp.equals(""))
    pageNum = Integer.parseInt(pageTemp);

  // 목록에 출력할 게시물 볌위 계산
  int start = (pageNum - 1) * pageSize + 1;
  int end = pageNum * pageSize;
  param.put("start", start);
  param.put("end", end);

  //  페이지 처리 end

  List<BoardDTO> boardLists = dao.selectListPage(param);
  dao.close();
%>
<html>
<head>
    <title>회원제 게시판</title>
</head>
<body>
  <jsp:include page="../Common/Link.jsp" />
  <h2>목록 보기 (List) - 현재 페이지 : <%= pageNum %> (전체 : <%= totalPage%>)</h2>
  <form method="get">
    <table border="1" width="90%">
      <tr>
        <td align="center">
          <select name="searchField">
            <option value="title">제목</option>
            <option value="content">내용</option>
          </select>
          <input type="text" name="searchWord" />
          <input type="submit" name="검색하기" />
        </td>
      </tr>
    </table>
  </form>
  <%-- 게시물 목록 테이블 (표) --%>
  <table border="1" width="90%">
    <tr>
      <th width="10%">번호</th>
      <th width="50%">제목</th>
      <th width="15%">작성자</th>
      <th width="10%">조회수</th>
      <th width="15%">작성일</th>
    </tr>
    <%-- 목록의 내용 --%>
    <%
      // 게시물이 하나도 없을 때
      if (boardLists.isEmpty()) {
    %>
    <tr>
      <td colspan="5" align="center">
        등록된 게시물이 없음
      </td>
    </tr>
    <%
      }
      // 게시물이 있을 때
      else {
        int virtualNum = 0;
        int countNum = 0;
        for (BoardDTO dto : boardLists) {
          // virtualNum = totalCount--;
          virtualNum = totalCount - (((pageNum - 1) * pageSize) + countNum++);
    %>
      <tr align="center">
        <td><%=virtualNum%></td>
        <td align="left">
          <a href="View.jsp?num=<%=dto.getNum()%>"><%=dto.getTitle()%></a>
        </td>
        <td align="center"><%= dto.getId()%></td>
        <td align="center"><%= dto.getVisitcount()%></td>
        <td align="center"><%= dto.getPostdate()%></td>
      </tr>
    <%
        }
      }
    %>
  </table>
  <table border="1" width="90%">
    <tr align="center">
      <td>
        <%= BoardPage.pagingStr(totalCount, pageSize, blockPage, pageNum, request.getRequestURI())%>
      </td>
      <%--   글쓰기 버튼   --%>
      <td>
        <button type="button" onclick="location.href='Write.jsp';">글쓰기</button>
      </td>
    </tr>
  </table>
</body>
</html>
