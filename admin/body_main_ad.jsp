<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import = "java.util.ArrayList"%>
<%@ page import = "dto.Product"%>
<%@ page import = "dao.ProductRepository"%>



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
<% 
    ProductRepository dao = ProductRepository.getInstance();
	ArrayList<Product> listOfProducts =dao.getAllProducts();
%>
	<div class= "container">
        <div class="row" align = "center">
            <%
            	for (int i = 0; i < listOfProducts.size(); i++){
                    	Product product = listOfProducts.get(i);
            %>
            <div class = "col-md-4">
                <div class="card bg-dark text-white">
                        <img src="../image/product/<%=product.getFilename()%>" class="card-img" alt="...">
                        <div class="card-img-overlay">
                        <h5 class="card-title">이미지 샘플</h5>
                        <p class="card-text">출처 : 구글 검색</p>
                        </div>
                        </div>
                <h3><%=product.getPname()%></h3>
                <p><%=product.getDescription()%>
                <p><%=product.getUnitPrice()%>원
                 <p><a href="product_detail_ad.jsp?id=<%=product.getProductId()%>" class="btn btn-secondary" role="button"> 상품 상세 정보 &raquo;</a></p>  
            </div>
            <%
                }
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