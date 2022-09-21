<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import = "java.util.ArrayList"%>
<%@ page import = "dto.Product"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />

<%! String greeting = "Welcome to TWNARA";
    String tagline = "Welcome to TWNARA Market!";%>
    	<div class="jumbotron" style="text-align:center; margin: 0 350px 0 350px; ">
            <div class="container">
                <h1 class="display-3">
                    <%=greeting%>
                </h1>
            </div>
    </div>
<br>
<% 
	ArrayList<Product> listOfProducts = productDAO.getAllProducts();
%>
	<div class= "container">
        <div clas="row" align="center">
            <%
            	for (int i = 0; i < listOfProducts.size(); i++){
                    	Product product = listOfProducts.get(i);
            %>
            <div class = "col-md-4">
                <h3><%=product.getPname()%></h3>
                <p><%=product.getDescription()%>
                <p><%=product.getUnitPrice()%>원
                     
            </div>
            <%
                }
            %>
        </div>
        <hr>
</div>
    <div class="card bg-white text-white" style="margin: 0px 350px 100px 350px;">
        <img src="image\main_001.jpg" class = "img-fluid" alt="main_image">
        <div class="card-img-overlay">
        </div>
</div>
    <div class="container">
        <div class="text-center">
            	<h3>
                    <%=tagline%>
            </h3>
        </div>
        <hr>
    </div>