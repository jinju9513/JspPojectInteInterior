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
<title>상담 | 아이의 방 꾸며주기!</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/main.css" />

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
<link rel="stylesheet" href="consultMain.css">
</head>
<style>
input[name="roomCnt"]+label:before {
	display: none !important;
}

input[name="roomCnt"]:checked+label {
	background-color: skyblue;
	color: #fff;
}

input[name="roomCnt"]+label {
	padding: 3px 5px !important;
	border-radius: 9px !important;
}

input[name="themeSelect"]+label:before {
	display: none !important;
}

input[name="themeSelect"]:checked+label {
	background-color: skyblue;
	color: #fff;
}

input[name="themeSelect"]+label {
	padding: 3px 5px !important;
	border-radius: 9px !important;
}
</style>
<body class="is-preload">
	<!-- 이벤트 배너 시작 -->
	<%-- <jsp:include page="/fixed/event_banner.jsp" /> --%>
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

		<!-- Banner -->
		<section id="banner" data-video="images/banner">
			<div class="inner">
				<header>
					<h1>상담</h1>
					<p>
						예상비용은 가장 저렴한 자재 기준으로 알려드리며 단순 참고용입니다.<br> 실제 시공 시에는 현장의 상황과
						사용될 자재에 따라 금액이 다를 수 있습니다.
					</p>
				</header>
				<ul class="actions special">
					<li><a href="${pageContext.request.contextPath}/app/myPage/myConsult.jsp" class="button">상담내역보기</a></li>
				</ul>
			</div>
			<a href="#one" class="more scrolly" id="start">Learn More</a>
			<video src="${pageContext.request.contextPath}/images/consult.mp4"
				muted autoplay loop playsinline></video>
		</section>

		<!-- Wrapper -->
		<form method="post" action="#" name="consultForm">
			<div id="wrapper">
				<!-- One -->
				<section id="one" class="main">
					<!-- 예상 비용 -->
					<div class="floating"
						style="padding-top: 1em; padding-bottom: 1em;">
						<div class="inner">
							<div class="table-wrapper">
								<table>
									<thead>
										<tr>
											<th>총 예상 비용</th>
											<th></th>
											<th></th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td colspan="3" style="text-align: right"><div
													class="price">
													<div class="total_price">
														<span id="min_price">0</span>
														 ~ 
														<span id="max_price">0</span>만원
													</div>
												</div></td>
											<td></td>
											<td></td>
										</tr>
									</tbody>
								</table>

								<a href="#one" class="more scrolly" id="back"><img alt=""
									src="${pageContext.request.contextPath}/images/top.png"
									style="width: 64px;"></a>
								<p style="font-weight: bold;">처음으로</p>
							</div>
						</div>
					</div>

					<div class="inner spotlight style1 inactive">
						<div class="content">
							<header style="margin-bottom: 13%; margin-left: 45%;">
								<h2>STEP 1</h2>
								<p>인테리어 유형</p>
							</header>
						</div>
						<input type="radio" value="package" name="roomType" id="character"
							style="visibility: hidden;" checked onclick="changeType()">
						<label for="character" class="picture"> <span
							class="image"><img
								src="${pageContext.request.contextPath}/images/DisneyCastle.jpg"
								alt="" class="imageEx">캐릭터 패키지</span>
						</label> <input type="radio" value="modern" name="roomType" id="modern"
							style="visibility: hidden;" onclick="changeType()"> <label
							for="modern" class="picture"> <span class="image"><img
								src="${pageContext.request.contextPath}/images/review1.jpeg"
								alt="" class="imageEx">모던 패키지</span>
						</label>
					</div>
					<div class="col-12" style="text-align: center; padding-top: 16%;">
						<a href="#two" class="more scrolly"><img alt=""
							src="${pageContext.request.contextPath}/images/arrow.png"></a>
					</div>
				</section>

				<!-- Two -->
				<section id="two" class="main">
					<div class="col-12" style="text-align: center;">
						<a href="#one" class="more scrolly" id="back"><img alt=""
							src="${pageContext.request.contextPath}/images/back.png"></a>
					</div>
					<div class="inner spotlight style2 inactive">
						<div class="content">
							<header style="margin-left: 17%;">
								<h2>STEP 2</h2>
								<p>공급면적</p>
							</header>
						</div>
					</div>
					<p style="margin-left: 60%;">평수(공급면적)를 입력해 주세요.</p>
					<div class="col-12" id="square">
						<input type="text" id="cns_square" name="square" placeholder="0"><label>&nbsp;&nbsp;평</label>
					</div>
					<div class="col-12" style="text-align: center; padding-top: 17%;">
						<a href="#three" class="more scrolly"><img alt=""
							src="${pageContext.request.contextPath}/images/arrow.png"></a>
					</div>
				</section>

				<!-- Three -->
				<section id="three" class="main">
					<div class="col-12" style="text-align: center;">
						<a href="#two" class="more scrolly" id="back"><img alt=""
							src="${pageContext.request.contextPath}/images/back.png"></a>
					</div>
					<div class="inner spotlight style3 inactive">
						<div class="content">
							<header style="margin-left: 17%;">
								<h2>STEP 3</h2>
								<p>방 개수</p>
							</header>
						</div>
					</div>
					<p style="margin-left: 60%;" id="a">방 개수를 선택해 주세요.</p>
					<div class="col-12" id="roomCntDiv">
						<input type="radio" name="roomCnt" value="1" id="roomCnt1"
							style="display: none;" onclick="roomPrice()" checked> <label for="roomCnt1">
							<span class="btn-roonCnt-select">1개</span>
						</label> <input type="radio" name="roomCnt" value="2" id="roomCnt2"
							style="display: none;" onclick="roomPrice()"> <label for="roomCnt2"> <span
							class="btn-roonCnt-select">2개</span>
						</label> <input type="radio" name="roomCnt" value="3" id="roomCnt3"
							style="display: none;" onclick="roomPrice()"> <label for="roomCnt3"> <span
							class="btn-roonCnt-select">3개</span>
						</label> <input type="radio" name="roomCnt" value="4" id="roomCnt4"
							style="display: none;" onclick="roomPrice()"> <label for="roomCnt4"> <span
							class="btn-roonCnt-select">4개</span>
						</label>
					</div>
					<div class="col-12" style="text-align: center; padding-top: 17%;">
						<a href="#four" class="more scrolly"><img alt=""
							src="${pageContext.request.contextPath}/images/arrow.png"></a>
					</div>
				</section>

				<!-- Four -->
				<section id="four" class="main">
					<div class="col-12" style="text-align: center;">
						<a href="#three" class="more scrolly" id="back"><img alt=""
							src="${pageContext.request.contextPath}/images/back.png"></a>
					</div>
					<div class="inner spotlight style4 inactive">
						<div class="content">
							<header style="margin-left: 17%;">
								<h2 >STEP 4</h2>
								<p>테마 선택</p>
							</header>
						</div>
					</div>
					<p style="margin-left: 60%;">테마를 선택해 주세요.</p>
					<div class="col-12" id="char_pac">
						<input type="radio" name="themeSelect" value="disney" id="disney"
							style="display: none;" checked> <label for="disney">
							<span class="btn-roonCnt-select">디즈니</span>
						</label> <input type="radio" name="themeSelect" value="pixar" id="pixar"
							style="display: none;"> <label for="pixar"> <span
							class="btn-roonCnt-select">픽사</span>
						</label> <input type="radio" name="themeSelect" value="ghibli" id="ghibli"
							style="display: none;"> <label for="ghibli"> <span
							class="btn-roonCnt-select">지브리</span>
						</label> <input type="radio" name="themeSelect" value="marvel" id="marvel"
							style="display: none;"> <label for="marvel"> <span
							class="btn-roonCnt-select">마블</span>
						</label><br> <input type="radio" name="themeSelect" value="sanrio"
							id="sanrio" style="display: none;"> <label for="sanrio">
							<span class="btn-roonCnt-select">산리오</span>
						</label> <input type="radio" name="themeSelect" value="dc" id="dc"
							style="display: none;"> <label for="dc"> <span
							class="btn-roonCnt-select">DC</span>
						</label> <input type="radio" name="themeSelect" value="etc" id="etc"
							style="display: none;"> <label for="etc"> <span
							class="btn-roonCnt-select">기타</span>
						</label>
					</div>

					<div class="col-12" id="modern_pac">
						<input type="radio" name="themeSelect" value="white" id="white"
							style="display: none;"> <label for="white"> <span
							class="btn-roonCnt-select">모던-화이트</span>
						</label> <input type="radio" name="themeSelect" value="black" id="black"
							style="display: none;"> <label for="black"> <span
							class="btn-roonCnt-select">모던-블랙</span>
						</label> <input type="radio" name="themeSelect" value="blue" id="blue"
							style="display: none;"> <label for="blue"> <span
							class="btn-roonCnt-select">모던-블루</span>
						</label><br> <input type="radio" name="themeSelect" value="red"
							id="red" style="display: none;"> <label for="red">
							<span class="btn-roonCnt-select">모던-레드</span>
						</label> <input type="radio" name="themeSelect" value="brown" id="brown"
							style="display: none;"> <label for="brown"> <span
							class="btn-roonCnt-select">모던-브라운</span>
						</label>
					</div>

					<div class="col-12" style="text-align: center; padding-top: 14%;">
						<a href="#cta" class="more scrolly"><img alt=""
							src="${pageContext.request.contextPath}/images/arrow.png"></a>
					</div>
				</section>
				<!-- CTA -->
				<section id="cta" class="main special">
					<div class="inner">
						<p>예상비용을 확인하시고 상담신청 버튼을 눌러주세요.</p>
						<ul class="actions stacked special">
							<li><input type="button" value="상담신청"
								class="button primary large" onclick="formSubmit()"></li>
							<li><a
								href="${pageContext.request.contextPath}/app/myPage/myConsult.jsp"
								class="button large">상담내역보기</a></li>
						</ul>
					</div>
				</section>
			</div>
		</form>

		<!-- Footer -->
		<footer id="footer">
			<jsp:include page="/fixed/footer.jsp"></jsp:include>
		</footer>
	</div>

	<!-- Scripts -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
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
		var contextPath = "${pageContext.request.contextPath}";
	</script>
	<script src="${pageContext.request.contextPath}/app/consult/consultMain.js"></script>
</body>
</html>