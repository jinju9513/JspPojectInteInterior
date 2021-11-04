<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<!--
	Formula by Pixelarity
	pixelarity.com | hello@pixelarity.com
	License: pixelarity.com/license
-->
<html>
<head>
<title>마이페이지 | 회원정보 수정</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/main.css" />
<link rel="stylesheet" href="myPage.css" />
</head>
<style>
#inputEmail {
	display: flex;
	flex-direction: row;
	align-items: center;
}

#revise {
	font-weight: bold;
	margin-left: 5%;
	font-size: 12px !important;
}

form {
	padding-top: 5%;
	margin-left: 7%;
	margin-right: 7%;
}

#signout {
	margin-left: 70%;
	color: #ccc;
	font-size: 14px !important;
}

.myInfo {
	float: left;
	width: 25%;
	list-style: none !important;
}

fieldset div {
	margin: 4%;
	font-weight: 400;
}

fieldset {
	font-size: 10px !important;
	border: solid 2px #eaeaea !important;
	margin: auto !important;
	width: 60% !important;
}

.col-12 {
	display: flex;
	align-items: center;
}

.col-12-small {
	float: left;
}

.col-12 .col-12-small {
	width: 15%;
	margin: 0;
}

.info {
	width: 9%;
}

.col-6 {
	margin: 0;
	width: 37.1%;
}

#email_seperator {
	float: left;
	margin: 1%;
	width: 5%;
	text-align: center;
	color: #ccc;
}

ul {
	margin: 0 !important;
}
</style>
<body class="is-preload">
	<!-- 이벤트 배너 시작 -->
	<jsp:include page="/fixed/event_banner.jsp" />
	<!-- 이벤트 배너 끝 -->

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



		<!-- Wrapper 시작 -->
		<div id="wrapper">
			<h3 style="text-align: center; border-bottom: none;">My Page</h3>
			<!-- inquiry_container 시작 -->
			<div id="inquiry_container" style="height: auto;">
				<!-- inquiry_menu 시작 -->
				<div id="inquiry_menu">
					<a href="javascript:void(0);">회원정보 수정</a><a href="purchaseHistory.jsp">구매내역</a><a
						href="cart.jsp">장바구니</a><a href="myInquire.jsp">게시물 관리</a><a
						href="address.jsp">배송지 관리</a>
					<hr style="border: white;">
					<form method="post" action="">
						<fieldset>
							<div class="col-12" style="align-items: baseline;">
								<p id="revise">회원정보수정</p>
								<p id="signout">
									<a href="${pageContext.request.contextPath}/app/myPage/deleteAccount.jsp" style="font-size: 8px;">탈퇴하기</a>
								</p>
							</div>
							<div class="col-12" style="margin-bottom: 0; margin-top: 0;">
								<div class="info">이메일</div>
								<div class="col-6 col-12-small">
									<input type="text" name="email" id="email" value=""
										placeholder="이메일" style="font-size: 10px;">
								</div>
								<div id="email_seperator">@</div>
								<div class="col-6 col-12-small">
									<span id="inputEmail"> <select id="email_select"
										style="font-size: 10px;">
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
							</div>
							<div class="col-12" style="margin-bottom: 0; margin-top: 0;">
								<div class="info">휴대폰 번호 변경</div>
								<input type="text" name="user_phone_no" id="user_phone_no"
									placeholder="휴대폰 번호(- 제외)" class="phone"
									style="width: 24%; font-size: 10px;" />
								<ul class="actions stacked">
									<li><input type="button" value="인증번호 전송"
										class="button primary" onclick=""></li>
								</ul>
							</div>
							<div class="col-12" style="margin-bottom: 0; margin-top: 0;">
								<div class="info">휴대폰 번호 인증</div>
								<input type="text" name="phone_no_check" id="phone_no_check"
									placeholder="인증번호 입력" class="phone"
									style="width: 24%; font-size: 10px;" />
								<ul class="actions stacked">
									<li><input type="button" value="인증번호 확인"
										class="button primary" onclick=""></li>
								</ul>
							</div>
							<div class="col-6"
								style="font-size: 17px; margin-left: 6%; margin-bottom: 12%; margin-top: 2%;">
								<ul class="actions" style="float: right; font-size: 12px;">
									<li><a href="#" class="button primary large">회원 정보 수정</a></li>
								</ul>
							</div>
						</fieldset>
					</form>

					<!-- inquiry_menu 끝 -->
				</div>
				<!-- search_container 끝 -->
			</div>
			<!-- inquiry_container 끝 -->
		</div>
		<!-- Wrapper 끝 -->




		<!-- Footer -->
		<footer id="footer">
			<jsp:include page="/fixed/footer.jsp"></jsp:include>
		</footer>

	</div>
	<!-- Scripts -->
	<script
		src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/jquery.scrolly.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/jquery.scrollex.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
	<script>
		$(document)
				.ready(
						function() {
							$('#email_select')
									.change(
											function() {
												var email = $('#email_select')
														.val(); //id선택자로 email select box값 추출하여 저장
												if (email == '_manual') { //selectbox value가 _manual이면
													//selectbox 태그를 input 태그로 변경
													$("#email_select")
															.replaceWith(
																	"<input type = 'text' id='input_email' placeholder='직접입력'>");
													//button태그를 #inputEmail뒤에 생성
													$("#inputEmail")
															.append(
																	"<button id='reset' type='button' onclick='check()'>✖</button>");
													flag = true;
												}
											});
						});

		function check() {
			var i = document.getElementById('inputEmail');
			var j = document.getElementById('input_email');
			j.value = null;
			i.innerHTML = "<select id='email_select' name='email'>"
					+ "<option selected disabled>선택</option>"
					+ "<option value='naver.com'>naver.com</option>"
					+ "<option value='daum.net'>daum.net</option>"
					+ "<option value='gmail.com'>gmail.com</option>"
					+ "<option value='nate.com'>nate.com</option>"
					+ "<option value='hotmail.com'>hotmail.com</option>"
					+ "<option value='icloud.com'>icloud.com</option>"
					+ "<option value='outlook.com'>outlook.com</option>"
					+ "<option value='_manual'>직접입력</option></select>";
			flag = false;
		};
	</script>
</body>
</html>