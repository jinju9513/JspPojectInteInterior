<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<!--
	Formula by Pixelarity
	pixelarity.com | hello@pixelarity.com
	License: pixelarity.com/license
-->
<html>
<head>
<title>주문/결제 | 내 방은 못말려 스토어</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
<style>

/* 오른쪽 플로팅 버튼 */
.floating { 
	border : 1px solid lightgray !important;
	background-color:white !important; 
    position: fixed !important;
    right: 35% !important;
    top: 180px !important;
    margin-right: -30% !important;
    text-align: center !important;
    width: 30% !important;
    height: 35% !important;
    border-radius: 8px !important;
    -webkit-border-radius: 8px !important;
    min-width :330px !important;
	min-height :550px !important;
} 

td {
	background-color:white !important;
	border-bottom:hidden !important;
	
}

table td{
	padding: 0% 0% 0% 0% !important;
}


table th {
    font-size: 1.1em !important;
    font-weight: 700 !important;
    padding-left: 0% !important;
    padding-bottom: 0.2em !important;
    text-align: left;
    border-bottom:hidden !important;
    border-top: hidden !important;
}

form {
    position: relative !important;
    right: 28% !important;
}

.col-12-small {
	width: 49% !important;
}

.col-12-xsmall {
	width: 70% !important;
}

#email_seperator {
	width: 2% !important;
	padding-left: 2% !important;
	padding-top: 16% !important;
}

.phone {
	float: left !important;
}


.gtr-uniform{
	margin-left: 25% !important;
	margin-right: 25% !important;
}
#sns{
	font-size: 14px !important;
}

#inputEmail{
    display: flex !important;
    flex-direction: row !important;
    align-items: center !important;
}


/* 주문상폼 */
.reviewTD{
	width: 30%;
    height: 100px;
}

.main{
	width: 65%
}


</style>
</head>
	<!-- 이벤트 배너 시작 -->
	<jsp:include page="/fixed/event_banner.jsp" />
	<!-- 이벤트 배너 끝 -->
<body class="is-preload">

	<!-- Page Wrapper -->
	<div id="page-wrapper">

		<!-- Header -->
		<header id="header">
      	<c:choose>
      		<c:when test="${session_id==null }">
        		 <jsp:include page="/fixed/header.jsp"></jsp:include>
      		</c:when>
      		<c:otherwise>
		         <jsp:include page="/fixed/header_login.jsp"></jsp:include>
      		</c:otherwise>
      	</c:choose>
      </header>

		<!-- Menu -->
		<nav id="menu">
			<jsp:include page="/fixed/menu.jsp"></jsp:include>
		</nav>

		<!-- Wrapper -->
		<div id="wrapper">
					<div class="floating" style="padding-top: 1em; padding-bottom: 1em;">  
						<div class="inner">
								<div class="table-wrapper">
										<table>
											<thead>
												<tr>
													<th>결제금액</th>
													<th></th>
													<th></th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td style="text-align:left">총 상품 금액</td>
													<td></td>
													<td style="text-align:right">640,000원</td>
												</tr>
												<tr>
													<td style="text-align:left">배송비</td>
													<td></td>
													<td style="text-align:right">0원</td>
												</tr>
												<tr>
													<td style="text-align:left">쿠폰 사용</td>
													<td></td>
													<td style="text-align:right">0원</td>
												</tr>
												<tr>
													<td style="text-align:left">포인트 사용</td>
													<td></td>
													<td style="text-align:right">0원</td>
												</tr>
												
												<tr style="border-bottom:gray;"></tr>
												<tr></tr>
											<thead>
												<tr>
													<th style="text-align:left; font-size:1em;">총 상품 금액</th>
													<th></th>
													<th style="text-align:right; font-size:1.2em; padding: 0;"><span id="totalPrice">640,000</span>원</th>
												</tr>
											</thead>
												<tr>
													<td></td>
													<td></td>
													<td style="text-align:right">0원</td>
												</tr>
												
												<tr></tr>
												<tr style="border-bottom:gray;"></tr>
												<tr></tr>
											</tbody>
										</table>
								</div><!-- table -->
							<!-- 이용약관 -->
							<fieldset style="text-align: initial;">
								<div class="col-12">
									<input type="checkbox" id="agreeAll" name="agreeAll">
									<label for="agreeAll"><strong>아래 내용에 모두 동의합니다.(필수)</strong></label>
								</div>
								<div class="col-12">
									<label for="agree">
										<a href="${pageContext.request.contextPath}/app/footer/privacyPolicy.jsp" target="_blank">개인정보 수집 및 이용 동의</a>
									</label>
								</div>
								<div class="col-12">
									<label for="term">
										<a href="${pageContext.request.contextPath}/app/footer/term.jsp" target="_blank">결제대행 서비스 이용약관 동의</a>
									</label>
								</div>
								<div class="col-12">
									<label for="event">본인은 만 14세 이상이며, 주문 내용을 확인하였습니다.</label>
								</div>
							</fieldset>
								<input type="button" value="결제하기" class="button primary large" onclick="" />
					</div>
			</div>
		</div>



<!-- 정보 입력받는 구간 -->
			<!-- Main -->
		<div id="wrapper">
			<section id="main" class="main">
				<div class="inner">
					<!-- <header class="major">
						<h1>결제하기</h1>
					</header> -->
						<h2 id="content" style="border-bottom:groove; font-size: 1.8em; font-weight: 500;">주문자</h2>
						
			
						<!-- 이메일 -->
					<form method="post" action="#">
						<div class="row gtr-uniform">
							<!-- 이름 -->
							<div class="col-6 col-12-xsmall">
							<label>이름</label>
								<input type="text" name="nickname" id="nickname" value="" placeholder="이름" style="width: 147%;">
							</div>
							
							<!-- 이메일 -->
							<div class="col-6 col-12-small">
							<label>이메일</label>
								<input type="text" name="email" id="email" value=""	placeholder="이메일">
							</div>
							<div id="email_seperator">@</div>
							<div class="col-6 col-12-small">
								<label>&nbsp;</label>
								<span id="inputEmail">
									<select id="email_select" name='email'>
										<option selected disabled>선택</option>
										<option value="naver.com">naver.com</option>
										<option value="daum.net">daum.net</option>
										<option value="gmail.com">gmail.com</option>
										<option value="nate.com">nate.com</option>
										<option value="hotmail.com">hotmail.com</option>
										<option value="icloud.com">icloud.com</option>
										<option value="outlook.com">outlook.com</option>
										<option value="_manual">직접입력</option>
									</select>
								</span>
							</div>
								<div class="col-6 col-12-xsmall">
									<label>휴대폰번호</label>
										<input type="text" name="phoneNum" id="phoneNum" placeholder="휴대폰 번호(- 제외)" style="width: 147%;"/>
							</div>
								
				
				
							</div>
						</form>
					</div>
				</section>
				
							
				<!-- 배송지 -->
				<section id="main" class="main">
					<div class="inner">
						<h2 id="content" style="border-bottom:groove; font-size: 1.8em; font-weight: 500;">배송지</h2>
						
						<form method="post" action="#">
							<div class="row gtr-uniform">
								<div class="col-6 col-12-xsmall">
										<label>받는 사람</label>
											<input type="text" name="nickname" id="nickname" value="" placeholder="" style="width: 147%;">
								</div>
								<div class="col-6 col-12-xsmall">
										<label>연락처</label>
											<input type="text" name="phoneNum" id="phoneNum" placeholder="휴대폰 번호(- 제외)" style="width: 147%;"/>
								</div>
								
								<div class="col-6 col-12-small">
									<label>배송지</label>
									<span id="inputEmail">
										<select id="email_select" name='email' style="width: 130%;">
											<option selected disabled>선택</option>
											<option value="add_1">1번 주소지</option>
											<option value="add_2">2번 주소지</option>
											<option value="add_3">3번 주소지</option>
										</select>
									</span>
								</div>
							<div class="col-6 col-12-xsmall">
										<div style="font-size:1.1em; font-weight:600;">이름</div>
										<div style="font-weight:500;">주소~~~~~~~~~~~~</div>
										<div style="font-weight:300;">이름 번호</div>
										<br>
										
										<select id="email_select" name='email' style="width: 230%;">
											<option selected disabled>배송시 요청사항을 선택해주세요</option>
											<option value="add_1">부재시 문앞에 놓아주세요</option>
											<option value="add_2">배송전에 미리 연락주세요</option>
											<option value="add_3">부재시 경비실에 맡겨주세요</option>
											<option value="add_4">부재시 전화주시거나 문자 남겨 주세요</option>
											<option value="_manual">직접입력</option>
										</select>
									
							</div>
							</div>
						</form>
					</div>
				</section>
				
				<!-- 주문상품 -->
				<section id="main" class="main">
					<div class="inner">
						<h2 id="content" style="border-bottom:groove; font-size: 1.8em; font-weight: 500;">주문상품</h2>
					
						
						<section id="main" class="main">
							<div class="inner2">
								<div class="inner">
									<table style="width:150%">
										<tr>
											<td></td>
											<td style="text-align:right; font-weight: 600;">무료 배송인지 아닌지</td>
										</tr>
										<tr>
											<td style="width:10%">사진 공간<!-- <img src="../../images/review1.jpeg" class="bestSeller" style="width: 95%"> --></td>
											<td class="reviewTD">
											상품이름 (촤라라라라라라라라라라락)<br>
											가격 (슈루루루루루루루루루루루루룱)<br>
											개수 (삐용삐용삐용삐용삐용삐용삐용)
											</td>
										</tr>
									</table>
								</div>
							</div>
						</section>
					</div>
				</section>


	
		<!--포인트 -->
				<section id="main" class="main">
					<div class="inner">
						<h2 id="content" style="border-bottom:groove; font-size: 1.8em; font-weight: 500;">포인트</h2>
							
							<div class="col-6 col-12-xsmall">
								<div style="font-weight:500;">남은 포인트 <span style="font-weight:700;">0p</span></div>
								<input type="text" name="phoneNum" id="phoneNum" placeholder="0" class="phone" style="width: 50%;"/>
								<ul class="actions stacked">
									<li><input type="button" value="전액 사용" class="button primary" onclick=""></li>
								</ul>
							</div>
		<!-- 쿠폰 -->
						<h2 id="content" style="border-bottom:groove; font-size: 1.8em; font-weight: 500;">쿠폰</h2>
							<div class="col-6 col-12-xsmall">
								<input type="text" name="phoneNum" id="phoneNum" placeholder="쿠폰코드" class="phone" style="width: 50%;"/>
								<ul class="actions stacked">
									<li><input type="button" value="&nbsp;&nbsp;&nbsp;확인&nbsp;&nbsp;&nbsp;" class="button primary" onclick=""></li>
								</ul>
							</div>
					</div>
				</section>


				<!-- 결제수단 -->
				<section id="main" class="main">
					<div class="inner">
						<h2 id="content" style="border-bottom:groove; font-size: 1.8em; font-weight: 500;">결제수단</h2>
					
						<!-- <div class="css-1i2ch29-List e149t0mw4">
						
	카드	<button type="button" style="height:100%" name="detail" onclick="choiceType()">
				<img alt="카드 아이콘" class="css-k5pe93-PayGateIcon e149t0mw2" src="https://image.ohou.se/i/bucketplace-v2-development/pg/img_card.png?w=144&amp;h=144&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/pg/img_card.png?w=144&amp;h=144&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_card.png?w=180&amp;h=180&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_card.png?w=256&amp;h=256&amp;c=c 3x">
				<div>카드</div></button>
	카카오	<button type="button" style="height:100%" name="detail" onclick="choiceType()">
				<img alt="카카오페이 아이콘" class="css-k5pe93-PayGateIcon e149t0mw2" src="https://image.ohou.se/i/bucketplace-v2-development/pg/img_kakaopay.png?w=144&amp;h=144&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/pg/img_kakaopay.png?w=144&amp;h=144&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_kakaopay.png?w=180&amp;h=180&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_kakaopay.png?w=256&amp;h=256&amp;c=c 3x">
				<div >카카오페이</div></button>
	핸드폰	<button type="button" style="height:100%" name="detail" onclick="choiceType()">
				<img alt="핸드폰 아이콘" class="css-k5pe93-PayGateIcon e149t0mw2" src="https://image.ohou.se/i/bucketplace-v2-development/pg/img_phone.png?w=144&amp;h=144&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/pg/img_phone.png?w=144&amp;h=144&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_phone.png?w=180&amp;h=180&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_phone.png?w=256&amp;h=256&amp;c=c 3x">
				<div>핸드폰</div></button>
	무통장	<button type="button" style="height:100%" name="detail" onclick="choiceType()">
				<img alt="무통장입금 아이콘" class="css-k5pe93-PayGateIcon e149t0mw2" src="https://image.ohou.se/i/bucketplace-v2-development/pg/img_vbank.png?w=144&amp;h=144&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/pg/img_vbank.png?w=144&amp;h=144&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_vbank.png?w=180&amp;h=180&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_vbank.png?w=256&amp;h=256&amp;c=c 3x">
				<div >무통장입금</div></button> 
					
						</div>-->
					
						
						
							<div class="col-4 col-12-small" style="display:inline">
								<input class="card" type="radio" id="priority-low" name="priority" checked onclick="choiceType()">
								<label for="priority-low">
								<img alt="카드 아이콘" class="css-k5pe93-PayGateIcon e149t0mw2" src="https://image.ohou.se/i/bucketplace-v2-development/pg/img_card.png?w=144&amp;h=144&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/pg/img_card.png?w=144&amp;h=144&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_card.png?w=180&amp;h=180&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_card.png?w=256&amp;h=256&amp;c=c 3x">
								</label>
							</div>
							<div class="col-4 col-12-small" style="display:inline">
								<input class="card" type="radio" id="priority-normal" name="priority" onclick="choiceType()">
								<label for="priority-normal">
								<img alt="카카오페이 아이콘" class="css-k5pe93-PayGateIcon e149t0mw2" src="https://image.ohou.se/i/bucketplace-v2-development/pg/img_kakaopay.png?w=144&amp;h=144&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/pg/img_kakaopay.png?w=144&amp;h=144&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_kakaopay.png?w=180&amp;h=180&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_kakaopay.png?w=256&amp;h=256&amp;c=c 3x">
								</label>
							</div>
							<div class="col-4 col-12-small" style="display:inline">
								<input class="card" type="radio" id="priority-high" name="priority" onclick="choiceType()">
								<label for="priority-high">
								<img alt="핸드폰 아이콘" class="css-k5pe93-PayGateIcon e149t0mw2" src="https://image.ohou.se/i/bucketplace-v2-development/pg/img_phone.png?w=144&amp;h=144&amp;c=c" srcset="https://image.ohou.se/i/bucketplace-v2-development/pg/img_phone.png?w=144&amp;h=144&amp;c=c 1.5x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_phone.png?w=180&amp;h=180&amp;c=c 2x,https://image.ohou.se/i/bucketplace-v2-development/pg/img_phone.png?w=256&amp;h=256&amp;c=c 3x">
								</label>
							</div>


						
						<!-- 카드 거래일 경우 오픈 -->
								<div id="choiceCard">
									<select class="cardType" name='email' style="width:35%" onclick="monthSelect()">
										<option class="month" selected disabled >카드를 선택해주세요</option>
										<option class="month" value="naver.com">삼성카드</option>
										<option class="month" value="daum.net">신한카드</option>
										<option class="month" value="gmail.com">비씨카드</option>
										<option class="month" value="nate.com">현대카드</option>
										<option class="month" value="hotmail.com">롯데카드</option>
										<option class="month" value="icloud.com">씨티카드</option>
										<option class="month" value="outlook.com">NH농협카드</option>
										<option class="month" value="outlook.com">하나카드</option>
										<option class="month" value="outlook.com">KB국민카드</option>
										<option class="month" value="outlook.com">우리카드</option>
										<option class="month" value="outlook.com">카카오뱅크카드</option>	
									</select>
									
									<select id="month" name='email' style="width:35%" disabled>
										<option value="naver.com">일시불</option>
										<option value="naver.com">2개월(무이자)</option>
										<option value="naver.com">3개월(무이자)</option>
										<option value="naver.com">4개월(무이자)</option>
										<option value="naver.com">5개월(무이자)</option>
										<option value="naver.com">6개월(무이자)</option>
										<option value="naver.com">7개월(무이자)</option>
										<option value="naver.com">8개월</option>
										<option value="naver.com">9개월</option>
										<option value="naver.com">10개월</option>
										<option value="naver.com">11개월</option>
										<option value="naver.com">12개월</option>
									</select>
								</div>
					</div>
				</section>
							
							
							
							



			</div><!-- 정보 입력받는 구간 -->
				
	</div><!-- page-wrapepr -->

		<!-- Footer -->
		<footer id="footer">
			<jsp:include page="/fixed/footer.jsp"></jsp:include>
		</footer>
	

	<!-- Scripts -->
	<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/jquery.scrolly.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/jquery.scrollex.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</body>
<script>

/**
 * 	회원가입
 */


function checkSelectAll()  {
	  // 전체 체크박스
	  const checkboxes 
	    = document.querySelectorAll('input[name="term"]');
	  // 선택된 체크박스
	  const checked 
	    = document.querySelectorAll('input[name="term"]:checked');
	  // select all 체크박스
	  const selectAll 
	    = document.querySelector('input[name="agreeAll"]');
	  
	  if(checkboxes.length === checked.length)  {
	    selectAll.checked = true;
	  }else {
	    selectAll.checked = false;
	  }

}

function selectAll(selectAll)  {
	  const checkboxes 
	     = document.getElementsByName('term');
	  
	  checkboxes.forEach((checkbox) => {
	    checkbox.checked = selectAll.checked
	  })
}


var flag = false;
		console.log(flag);
		console.log(111);
if(flag){
	$(document).ready(function(){
	    $('#email_select').change(function(){
	        var email = $('#email_select').val(); //id선택자로 email select box값 추출하여 저장
	        if(email == '_manual'){ //selectbox value가 _manual이면
	            $("#email_select").replaceWith("<input type = 'text' id='input_email' placeholder='직접입력'>");
	            //selectbox 태그를 input 태그로 변경
				$("#inputEmail").append("<button id='reset' type='button' onclick='check()'>✖</button>");
				flag = true;
	        }
	    });
	});
}
if(!flag){
	function check(){
	   var i = document.getElementById('inputEmail');
	   var j = document.getElementById('input_email');
	   j.value=null;
	   i.innerHTML = "<select id='email_select' name='email'>"+
	   "<option selected disabled>선택</option>"+
	   "<option value='naver.com'>naver.com</option>"+
	   "<option value='daum.net'>daum.net</option>"+
	   "<option value='gmail.com'>gmail.com</option>"+
	   "<option value='nate.com'>nate.com</option>"+
	   "<option value='hotmail.com'>hotmail.com</option>"+
	   "<option value='icloud.com'>icloud.com</option>"+
	   "<option value='outlook.com'>outlook.com</option>"+
	   "<option value='_manual'>직접입력</option></select>";
		flag = false;
	};
}


/* 카드선택 */
    var choiceCard = document.getElementById('choiceCard');
   /* choiceCard.style.display='none'; */
   
   function choiceType(){
    target =document.getElementsByClassName("card");
    var popupWidth = 428;
	var popupHeight = 527;
	
	var popupX = (window.screen.width / 2) - (popupWidth / 2);
	// 만들 팝업창 width 크기의 1/2 만큼 보정값으로 빼주었음
	
	var popupY= (window.screen.height / 2) - (popupHeight / 2);
	// 만들 팝업창 height 크기의 1/2 만큼 보정값으로 빼주었음
	var price1 = document.querySelector('#totalPrice');
	var price = price1.innerHTML;
    for (var i = 0; i < target.length; i++) {
      if(target[0].checked){
    	 choiceCard.style.display='block';
      }else{
    	 choiceCard.style.display='none';
      } 
   }               
    if(target[1].checked){
    	window.open('reserveKakao.jsp?price='+price,"check",'status=no, height=' + popupHeight  + ', width=' + popupWidth  + ', left='+ popupX + ', top='+ popupY);
    }
  }

 /* 할부선택 */
    var month = document.getElementById('month');
  
	monthSelect = function(){
   	 	var target =document.getElementsByClassName("month");    
     		  if(target != target[0]){
    	  		$("#month").attr("disabled", false); 
	}
   }                                             
 
</script>
</html>