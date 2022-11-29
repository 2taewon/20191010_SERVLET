<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import = "java.util.ArrayList"%>
<%@ page import = "dto.Product"%>
<%@ page import = "dao.ProductRepository"%>
<%@ page import = "java.sql.*"%> <!– 자바 mysql 연동 -->


<%! String greeting = "어서와요 TWNARA";
    String tagline = "Welcome to TWNARA Market!";%>
    	<div class="jumbotron bg-info" style="text-align:center; ">
            <div class="container">
                <h1 class="display-3">
                    <%=greeting%>
                </h1>
            </div>
    </div>
<br>
	<div class= "container">
        <div class="row" align = "center">
            <%@ include file="db/db_conn.jsp"%>
	<%
		String sql = "select * from product"; // 조회
		pstmt = conn.prepareStatement(sql); // 연결 생성
		rs = pstmt.executeQuery(); // 쿼리 실행
		while (rs.next()) { // 결과 ResultSet 객체 반복
	%>

            <div class = "col-md-4">
                <div class="card bg-dark text-white">
                        <img src="image/product/<%=rs.getString("p_fileName")%>" class="card-img" alt="...">
                        <div class="card-img-overlay">
                        <h5 class="card-title">이미지 샘플</h5>
                        <p class="card-text">출처 : 구글 검색</p>
                        </div>
                        </div>
            <h3><%=rs.getString("p_name")%></h3>
		    <p><%=rs.getString("p_description")%>
		    <p><%=rs.getString("p_UnitPrice")%>원
		    <p><a href="product_detail.jsp?id=<%=rs.getString("p_id")%>" class="btn btn-secondary" role="button"> 상세 정보 &raquo;></a>  
            </div>
            <%
                }
                if (rs != null)
			    rs.close();
 		        if (pstmt != null)
 			    pstmt.close();
 		        if (conn != null)
			    conn.close();
            %>
        </div>
        <hr>
</div>
    <div class="card bg-white text-white">
        <img src="image\main_001.jpg" class = "rounded mx-auto d-block" alt="main_image">
        <div class="card-img-overlay">
        </div>
</div>
    <div class="list-group">
        <a herf= "#" class="list-group-item list-group-item-action" aria-current="ture">iphone 7</a>
    	<a herf= "#" class="list-group-item list-group-item-action">iphone 8</a>
</div>

    <div class="container">
        <div class="text-center">
            	<h3>
                    <%=tagline%>
            </h3>
        </div>
        <hr>
    </div>