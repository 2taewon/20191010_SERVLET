<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import = "example.*" %>
		<footer class="container">
    		<p><br> &copy; Market Representative : LEETAEWON , Unique Number : 20191010 , Contact : taewon1005 <br>
        <%	 
                ShopTime time = new ShopTime();
        %>
    		 오늘 날짜와 시간 : <%= time.timenow() %>
	</p>
</footer>	