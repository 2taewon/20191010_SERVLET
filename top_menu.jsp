<%@ page contentType = "text/html;charset=utf-8" %>
<nav class="navbar navbar-expand navbar-white bg-white">
    			<div>
        <img src="image\twnara.gif" class = "img-fluid" alt="main_image">
    </div>
    			<div class="dropdown">
                    <button class ="btn btn-secondary dropdown-toggle" type ="button" id="dropdownMenuButton" 
                            data-toggle = "dropdown" aria-haspopup = "true" aria-expanded="false">카테고리
                    </button>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample03" aria-controls="navbarsExample03" aria-expanded="false" aria-label="Toggle navigation">
                    </button>
            	<div class ="dropdown-menu" aria-labelledby="dropdownMenuButton">
                    <a class = "dropdown-item" herf="#">채팅방</a>   
                 <div class ="dropdown-menu" aria-labelledby="dropdownMenuButton">
                    <a class = "dropdown-item" herf="#">지역</a>    
                    </div>
                </div>
    </div>
    
    	<div class="container">
            <nav class ="navar navbar-default navbar-fixed-right"></nav>
                    <div class="navbar-header">
            <a class = "navbar-brand" href="./index.jsp">메뉴바 : 홈페이지</a>
            <a class = "navbar-brand" href="./index.jsp">상품목록(기본 홈)</a>
            <a class = "navbar-brand" href="./login/login_user.jsp">로그인</a>
            <a class = "navbar-brand" href="./member/member_join.jsp">회원가입</a>
            <a class = "navbar-brand" href="/BoardListAction.do?pageNum=1">게시판(고객센터)</a>
            <a class = "navbar-brand" href="/admin/index_ad.jsp">관리자모드</a>
                    </div>
            </div>
    <form class="navbar-form navbar-left" role="search">
  <div class="form-group">
    <input type="text" class="form-control" placeholder="Search">
  </div>
</form>
    </nav>
           