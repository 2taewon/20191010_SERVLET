<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import ="dto.Product"%>
<%@ page import ="dao.ProductRepository"%>
<%@ page import ="com.oreilly.servlet.*"%>
<%@ page import ="com.oreilly.servlet.multipart.*"%>
<%@ page import ="java.util.Enumeration"%>
<%@ page import ="java.sql.*"%>
<%@ include file="../db/db_conn.jsp" %>


<%
	request.setCharacterEncoding("UTF-8");

	String realFolder = request.getServletContext().getRealPath("image"); //웹 어플리케이션상의 절대 경로
	String encType = "utf-8"; //인코딩 타입
	int maxSize = 5 * 1024 * 1024; //최대 업로드될 파일의 크기5Mbselec

	DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();
	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, policy);



		String memberid = multi.getParameter("memberid");
		String pwd = multi.getParameter("pwd");
		String username = multi.getParameter("username");
		String gender = multi.getParameter("gender");
		String birth= multi.getParameter("birth");
		String mail = multi.getParameter("mail");
		String phone = multi.getParameter("phone");
		String addressname = multi.getParameter("addressname");
        java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy/MM/dd(HH:mm:ss)");
		String regist_day = formatter.format(new java.util.Date()); 
        
            	
        String sql = "insert into member values(?,?,?,?,?,?,?,?,?)";
	pstmt = conn.prepareStatement(sql); // 쿼리문 몸체만 넣기
	pstmt.setString(1, memberid); // 각 필드 설정 - ? 순서대로
	pstmt.setString(2, pwd);
	pstmt.setString(3, username);
	pstmt.setString(4, gender);
	pstmt.setString(5, birth);
	pstmt.setString(6, mail);
	pstmt.setString(7, phone);
	pstmt.setString(8, addressname);
    pstmt.setString(9, regist_day);
	pstmt.executeUpdate(); // 최종 SQL 쿼리 실행
	
	if (pstmt != null)
 		pstmt.close();
 	if (conn != null)
		conn.close();


		
		response.sendRedirect("../index.jsp");
%>
