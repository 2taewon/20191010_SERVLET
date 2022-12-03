<%@ page contentType = "text/html;charset=utf-8" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
</script>
<script>
    <%
    Date nowDate = new Date();
    SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");

    Date nextDate = new Date(
        nowDate.getYear(),
        nowDate.getMonth(),
        nowDate.getDate() + 1
    );

%>
    </script>
<title>배송 정보</title>
</head>
    <body>
        <jsp:include page ="../top_menu.jsp"/>
        <div class ="jumbotron">
        <div class ="container">
            <h1 class ="display-3">배송정보</h1>
            </div>
        </div>
        <div class="container">
            <form action ="order_info_process.jsp" class="form-horizontal" method="post">
                <input type ="hidden" name ="cartId" value = "<%=request.getParameter("cartId")%>"/>
                <div class ="form-group row">
                    <label class = "col-sm-2">성명</label>
                    <div class = "col-sm-3">
                        <input name ="name" type="text" class="form-control" />
                    </div>
                </div>
                <div class="form-group row">
				<label class="col-sm-2">배송일</label>
				<div class="col-sm-3">
                        <input name="shippingDate" type="date" value="<%= sf.format(nextDate)%>" min="<%= sf.format(nextDate)%>" class="form-control" />
                    </div>
			</div>
	 			<div class="form-group row">
	   			<label class="col-sm-2">국가명</label>
	    	    <div class ="col-sm-3">
                                <select name="country" id="country">
                                <option value="korea">대한민국</option>
                                <option value="china">중국</option>
                                <option value="japan">일본</option>
                                <option value="USA">미국</option>
                    </select>
                    </div>  
                </div>
				<div class="form-group row">
	  			<label class="col-sm-2">우편번호</label>
	     		<div class="col-sm-3">
	 			<input type ="text" name="zipCode" id="sample4_postcode" placeholder="우편번호">
                <input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
                 
	    </div>
	</div>
                <div class ="form-group row">
                	<label class ="col-sm-2">주소</label>
                    	<div class="col-sm-9">
                        <input type="text" name=addressName id="sample4_roadAddress" placeholder="도로명주소">
                        <input type="text" name=addressName id="sample4_jibunAddress" placeholder="지번주소">
                        <span id="guide" style="color:#999;display:none"></span>
                        <input type="text" name=addressName id="sample4_extraAddress" placeholder="참고항목">
                        <input type="text" name=addressName id="sample4_detailAddress" placeholder="상세주소">
                    </div>
                </div>
                <div class ="form-group row">
                    <div class ="col-sm-offset-2 col-sm-10">
                    <a href ="../cart/product_cart.jsp?cartId=<%=request.getParameter("cartId")%>" class="btn btn-secondary" role ="button"> 이전 </a>
                        	<input type ="submit" class="btn btn-primary" value ="등록"/>
                        	<a href ="order_cancelled.jsp" class="btn btn-secondary" role="button"> 취소 </a>
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>