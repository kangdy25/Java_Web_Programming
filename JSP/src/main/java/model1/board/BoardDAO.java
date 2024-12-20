package model1.board;

import jakarta.servlet.ServletContext;
import common.JDBCConnect;

import java.util.List;
import java.util.Map;
import java.util.Vector;

public class BoardDAO extends JDBCConnect {
    public BoardDAO(ServletContext application) {
        super(application);
    }

    // 검색 조건에 맞는 게시물의 개수를 반환합니다.
    public int selectCount(Map<String, Object> map) {
        int totalCount = 0;

        // 게시물 수를 얻어오는 쿼리문 작성
        String query = "SELECT COUNT(*) FROM board";
        if (map.get("searchWord") != null) {
            query += " WHERE " + map.get("searchWord") + " " +
                    "LIKE '%" + map.get("searchWord") + "%'";
        }

        try {
            stmt = con.createStatement();
            rs = stmt.executeQuery(query);
            rs.next();
            totalCount = rs.getInt(1);
        } catch (Exception e) {
            System.out.println("게시물 수를 구하는 중 예외 발생");
            e.printStackTrace();
        }
        return totalCount;
    }

    // 검색 조건에 맞는 게시물 목록을 반환합니다.
    public List<BoardDTO> selectList(Map<String, Object> map) {
        List<BoardDTO> bbs = new Vector<BoardDTO>();

        String query = "SELECT * FROM board";
        if (map.get("searchWord") != null) {
            query += "WHERE " + map.get("searchField") + " "
                    + "LIKE '%" + map.get("searchWord") + "%' ";
        }
        query += " ORDER BY num DESC ";

        try {
            stmt = con.createStatement();
            rs = stmt.executeQuery(query);

            while (rs.next()) {
                BoardDTO dto = new BoardDTO();

                dto.setNum(rs.getString("num"));
                dto.setId(rs.getString("id"));
                dto.setTitle(rs.getString("title"));
                dto.setContent(rs.getString("content"));
                dto.setVisitcount(rs.getString("visitcount"));
                dto.setPostdate(rs.getDate("postdate"));

                bbs.add(dto);
            }
        } catch (Exception e) {
            System.out.println("게시물 조회 중 예외 발생");
            e.printStackTrace();
        }

        return bbs;
    }

    // 게시글 데이터를 받아 DB에 추가합니다.
    public int insertWrite(BoardDTO dto) {
        int result = 0;

        try {
            String query = "INSERT INTO board ( " +
                    " num, title, content, id, visitcount) " +
                    " VALUES ( " +
                    " seq_board_num.NEXTVAL, ?, ?, ?, 0)";
            psmt = con.prepareStatement(query);
            psmt.setString(1, dto.getTitle());
            psmt.setString(2, dto.getContent());
            psmt.setString(3, dto.getId());

            result = psmt.executeUpdate();
        } catch (Exception e) {
            System.out.println("게시물 입력 중 예외 발생");
            e.printStackTrace();
        }

        return result;
    }

    // 저장한 게시물을 찾아 내용을 반환합니다.
    public BoardDTO selectView(String num) {
        BoardDTO dto = new BoardDTO();

        // 쿼리문
        String query = "SELECT B.*, M.name "
                + "FROM member M INNER JOIN board B"
                + " ON M.id = B.id "
                + " WHERE num = ?";

        try {
            psmt = con.prepareStatement(query);
            psmt.setString(1, num);
            rs = psmt.executeQuery();

            // 결과 처리
            if (rs.next()) {
                dto.setNum(rs.getString(1));
                dto.setTitle(rs.getString(2));
                dto.setContent(rs.getString("content"));
                dto.setPostdate(rs.getDate("postdate"));
                dto.setId(rs.getString("id"));
                dto.setVisitcount(rs.getString(6));
                dto.setName(rs.getString("name"));
            }
        } catch (Exception e) {
            System.out.println("게시물 상세보기 예외 발생");
            e.printStackTrace();
        }
        return dto;
    }

    // 지정한 게시물의 조회수를 1씩 증가시킵니다.
    public void updateVisitCount(String num) {
        String query = "UPDATE board SET "
                        + " visitcount = visitcount+1 "
                        + " WHERE num=?";

        try {
            psmt = con.prepareStatement(query);
            psmt.setString(1, num);
            psmt.executeQuery();
        } catch (Exception e) {
            System.out.println("게시물 조회수 증가 중 예외 발생");
            e.printStackTrace();
        }
    }

    // 지정한 게시물을 수정합니다.
    public int updateEdit(BoardDTO dto) {
        int result = 0;

        try {
            // 쿼리문
            String query = "UPDATE board SET "
                    + " title=?, content=? "
                    + " WHERE num=?";

            // 쿼리문 완성
            psmt = con.prepareStatement(query);
            psmt.setString(1, dto.getTitle());
            psmt.setString(2, dto.getContent());
            psmt.setString(3, dto.getNum());

            result = psmt.executeUpdate();
        } catch (Exception e) {
            System.out.println("게시물 수정 중 예외 발생");
            e.printStackTrace();
        }
        return result;
    }

    // 지정한 게시물을 삭제합니다.
    public int deletePost(BoardDTO dto) {
        int result = 0;

        try {
            // 쿼리문
            String query = "DELETE FROM board WHERE num=?";

            // 쿼리문 완성
            psmt = con.prepareStatement(query);
            psmt.setString(1, dto.getNum());

            // 쿼리문 실행
            result = psmt.executeUpdate();
        } catch (Exception e) {
            System.out.println("게시물 삭제 중 예외 발생");
            e.printStackTrace();
        }
        return result;
    }

    // 검색에 맞는 게시물 목록을 반환합니다. (페이징 기능 지원)
    public List<BoardDTO> selectListPage(Map<String, Object> map) {
        List<BoardDTO> bbs = new Vector<BoardDTO>(); // 결과를 담을 변수

        // 쿼리문 템플릿
        String query = "SELECT * FROM ( "
                + "    SELECT Tb.*, ROWNUM rNum FROM ( "
                + "        SELECT * FROM board ";

        query += "        ORDER BY num DESC "
                +"    ) Tb "
                +") "
                +" WHERE rNum BETWEEN ? AND ?";

        try {
            // 쿼리문 완성
            psmt = con.prepareStatement(query);
            psmt.setString(1, map.get("start").toString());
            psmt.setString(2, map.get("end").toString());

            // 쿼리문 실행
            rs = psmt.executeQuery();

            while (rs.next()) {
                BoardDTO dto = new BoardDTO();
                dto.setNum(rs.getString("num"));
                dto.setId(rs.getString("id"));
                dto.setTitle(rs.getString("title"));
                dto.setContent(rs.getString("content"));
                dto.setVisitcount(rs.getString("visitcount"));
                dto.setPostdate(rs.getDate("postdate"));

                bbs.add(dto);
            }
        } catch (Exception e) {
            System.out.println("게시물 조회 중 예외 발생");
            e.printStackTrace();
        }

        return bbs;
    }
}
