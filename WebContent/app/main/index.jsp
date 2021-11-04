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
<title>내 방은 못말려 | We make your live liveable</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
<link rel="stylesheet" href="index.css">
</head>
<body class="is-preload">
	<!-- 이벤트 배너 시작 -->
	<%-- <jsp:include page="/fixed/event_banner.jsp"/> --%>
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
					<h1>내 방은 못말려</h1>
					<p>
						우리 아이가 성장하는 방<br>내 방은 못말려가 함께합니다.<br>320,543건<br> 내 방은
						못말려에 의뢰해 주신 고객 수<br> 우리 집 인테리어 비용은 얼마일까?<br> 상담 없이 실시간으로
						확인해보세요
					</p>
				</header>
		 		<ul class="actions special">
					<li><a href="${pageContext.request.contextPath}/app/consult/consultMain.jsp" class="button primary large">예상비용 확인하기</a></li>
				</ul>
			</div>
			<a href="#one" class="more">더 보기</a>
			<video src="${pageContext.request.contextPath}/images/myRoom.mp4" muted autoplay loop playsinline></video>
		</section>
		<div id="wrapper">

			<!-- One -->
			<section id="one" class="main">
					<div class="content">
						<header>
							<h2>시공 사례</h2>
						</header>
					</div>
				<div class="inner spotlight alt style1" id="con">
						<div class="swiper-container1" id="con2">
			               <div class="swiper-wrapper">
			                  <div class="swiper-slide">
			                     <a href="${pageContext.request.contextPath}/app/after/afterView.jsp"><img src="${pageContext.request.contextPath}/images/review3.jpeg" class="conEx" >스텐드 조명 <br>50000원</a>
			                  </div>
			                  <div class="swiper-slide">
			                     <a href="${pageContext.request.contextPath}/app/after/afterView.jsp"><img src="${pageContext.request.contextPath}/images/review1.jpeg" class="conEx" >스텐드 조명 <br>50000원</a>
			                  </div>
			                  <div class="swiper-slide">
			                     <a href="${pageContext.request.contextPath}/app/after/afterView.jsp"><img src="${pageContext.request.contextPath}/images/review4.jpeg" class="conEx" >스텐드 조명 <br>50000원</a>
			                  </div>
			                  <div class="swiper-slide">
			                     <a href="${pageContext.request.contextPath}/app/after/afterView.jsp"><img src="${pageContext.request.contextPath}/images/test01.jpg" class="conEx" >스텐드 조명 <br>50000원</a>
			                  </div>
			                  <div class="swiper-slide">
			                     <a href="${pageContext.request.contextPath}/app/after/afterView.jsp"><img src="${pageContext.request.contextPath}/images/test01.jpg" class="conEx" >스텐드 조명 <br>50000원</a>
			               	  </div>
			               </div>
			               <!-- 네비게이션 -->
							<br>
			               <!-- 페이징 -->
			               <div class="swiper-pagination1"></div>
		               </div>
		
				
				</div>
			</section>
			
			<!-- Two -->
			<section id="two" class="main">
					<div class="content">
						<header>
							<h2>베스트 상품</h2>
						</header>
					</div>
				<div class="inner spotlight alt style2" id="best">
						<div class="swiper-container2" id="best2">
			               <div class="swiper-wrapper">
			                  <div class="swiper-slide">
			                     <a href="${pageContext.request.contextPath}/app/store/productView.jsp"><img src="${pageContext.request.contextPath}/images/review3.jpeg" class="bestSeller" >스텐드 조명 <br>50000원</a>
			                  </div>
			                  <div class="swiper-slide">
			                     <a href="${pageContext.request.contextPath}/app/store/productView.jsp"><img src="${pageContext.request.contextPath}/images/review1.jpeg" class="bestSeller" >스텐드 조명 <br>50000원</a>
			                  </div>
			                  <div class="swiper-slide">
			                     <a href="${pageContext.request.contextPath}/app/store/productView.jsp"><img src="${pageContext.request.contextPath}/images/review4.jpeg" class="bestSeller" >스텐드 조명 <br>50000원</a>
			                  </div>
			                  <div class="swiper-slide">
			                     <a href="${pageContext.request.contextPath}/app/store/productView.jsp"><img src="${pageContext.request.contextPath}/images/test01.jpg" class="bestSeller" >스텐드 조명 <br>50000원</a>
			                  </div>
			                  <div class="swiper-slide">
			                     <a href="${pageContext.request.contextPath}/app/store/productView.jsp"><img src="${pageContext.request.contextPath}/images/test01.jpg" class="bestSeller" >스텐드 조명 <br>50000원</a>
			                  </div>
			                  <div class="swiper-slide">
			                     <a href="${pageContext.request.contextPath}/app/store/productView.jsp"><img src="${pageContext.request.contextPath}/images/test01.jpg" class="bestSeller" >스텐드 조명 <br>50000원</a>
			                  </div>
			               </div>
			               <!-- 네비게이션 -->
							<br>
			               <!-- 페이징 -->
			               <div class="swiper-pagination2"></div>
		               </div>
		
				</div>
				</section>
			
			<!-- Three -->
			<section id="three" class="main">
				<div class="heightDiv">
					<div class="inner">
							<section>
								<header>
									<h2>이벤트</h2>
								</header>
								<div class="swiper-container3" id="event">
					               <div class="swiper-wrapper">
					                  <div class="swiper-slide">                            
					                     <a href="${pageContext.request.contextPath}/app/community/eventView.jsp"><img src="${pageContext.request.contextPath}/images/event01.jpg" class="event" ></a>
					                  </div>                                                
					                  <div class="swiper-slide">                            
					                     <a href="${pageContext.request.contextPath}/app/community/eventView.jsp"><img src="${pageContext.request.contextPath}/images/event02.jpg" class="event" ></a>
					                  </div>                                                
					                  <div class="swiper-slide">                            
					                     <a href="${pageContext.request.contextPath}/app/community/eventView.jsp"><img src="${pageContext.request.contextPath}/images/event03.jpg" class="event" ></a>
					                  </div>                                                
					                  <div class="swiper-slide">                            
					                     <a href="${pageContext.request.contextPath}/app/community/eventView.jsp"><img src="${pageContext.request.contextPath}/images/event04.jpg" class="event" ></a>
					                  </div>                                                                                            
					               </div>
					               <!-- 네비게이션 -->
									<br>
					               <!-- 페이징 -->
					               <div class="swiper-pagination3"></div>
				               </div>
							</section>
					</div>
				</div>
			</section>
			

		<!-- Four -->
			<section id="four" class="main">
				<div class="heightDiv">
					<div class="inner">
							<section>
								<header>
									<h2>공지사항</h2>
								</header>
										<div id="div_table" style="width: 90%; margin: auto;">
										<table>
											<caption style="text-align: left; margin-bottom: 3%;"></caption>
											<thead>
												<tr>
													<th class="th-no2">번호</th>
													<th class="th-title2">제목</th>
													
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>${board.getBoard_num()}</td>
													<td><a
														href="${pageContext.request.contextPath}/board/BoardViewOk.bo?board_num=${board.getBoard_num()}">${board.getBoard_title()}</a>
													</td>
													<td>${board.getBoard_id()}</td>
													
												</tr>
												<tr>
													<td colspan="5" align="center">등록된 게시물이 없습니다.</td>
												</tr>
					
											</tbody>
										</table>
									</div>
							</section>
					</div>
				</div>
			</section>

	

	

		<!-- Footer -->
            <footer id="footer">
               <jsp:include page="/fixed/footer.jsp"></jsp:include>
            </footer>

	</div>
</div>
	<!-- Scripts -->
	<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/jquery.scrolly.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/jquery.scrollex.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
	<script>
	
		new Swiper('.swiper-container1', {
	
		      slidesPerView : 2, // 동시에 보여줄 슬라이드 갯수
		      spaceBetween : 0, // 슬라이드간 간격
		      slidesPerGroup : 2, // 그룹으로 묶을 수, slidesPerView 와 같은 값을 지정하는게 좋음
	
		      // 그룹수가 맞지 않을 경우 빈칸으로 메우기
	
		      // 3개가 나와야 되는데 1개만 있다면 2개는 빈칸으로 채워서 3개를 만듬
		      loopFillGroupWithBlank : true,
	
		      loop : true, // 무한 반복
	
		      pagination : { // 페이징
		         el : '.swiper-pagination1',
		         clickable : true, // 페이징을 클릭하면 해당 영역으로 이동, 필요시 지정해 줘야 기능 작동
		      },
		      autoplay : { // 자동 슬라이드 설정 , 비 활성화 시 false
		         delay : 3000, // 시간 설정
		         disableOnInteraction : false, // false로 설정하면 스와이프 후 자동 재생이 비활성화 되지 않음
		      },
		      navigation : { // 네비게이션
		         nextEl : '.swiper-button-next1', // 다음 버튼 클래스명
		         prevEl : '.swiper-button-prev1', // 이번 버튼 클래스명
		      },
		   });
		
		new Swiper('.swiper-container2', {
	
		      slidesPerView : 4, // 동시에 보여줄 슬라이드 갯수
		      spaceBetween : 0, // 슬라이드간 간격
		      slidesPerGroup : 4, // 그룹으로 묶을 수, slidesPerView 와 같은 값을 지정하는게 좋음
	
		      // 그룹수가 맞지 않을 경우 빈칸으로 메우기
	
		      // 3개가 나와야 되는데 1개만 있다면 2개는 빈칸으로 채워서 3개를 만듬
		      loopFillGroupWithBlank : true,
	
		      loop : true, // 무한 반복
	
		      pagination : { // 페이징
		         el : '.swiper-pagination2',
		         clickable : true, // 페이징을 클릭하면 해당 영역으로 이동, 필요시 지정해 줘야 기능 작동
		      },
		      autoplay : { // 자동 슬라이드 설정 , 비 활성화 시 false
		         delay : 3000, // 시간 설정
		         disableOnInteraction : false, // false로 설정하면 스와이프 후 자동 재생이 비활성화 되지 않음
		      },
		      navigation : { // 네비게이션
		         nextEl : '.swiper-button-next2', // 다음 버튼 클래스명
		         prevEl : '.swiper-button-prev2', // 이번 버튼 클래스명
		      },
		   });
		new Swiper('.swiper-container3', {
	
		      slidesPerView : 1, // 동시에 보여줄 슬라이드 갯수
		      spaceBetween : 10000, // 슬라이드간 간격
		      slidesPerGroup : 1, // 그룹으로 묶을 수, slidesPerView 와 같은 값을 지정하는게 좋음
	
		      // 그룹수가 맞지 않을 경우 빈칸으로 메우기
	
		      // 3개가 나와야 되는데 1개만 있다면 2개는 빈칸으로 채워서 3개를 만듬
		      loopFillGroupWithBlank : true,
	
		      loop : true, // 무한 반복
	
		      pagination : { // 페이징
		         el : '.swiper-pagination3',
		         clickable : true, // 페이징을 클릭하면 해당 영역으로 이동, 필요시 지정해 줘야 기능 작동
		      },
			  autoplay : { // 자동 슬라이드 설정 , 비 활성화 시 false
		         delay : 3000, // 시간 설정
		         disableOnInteraction : false, // false로 설정하면 스와이프 후 자동 재생이 비활성화 되지 않음
		      },
		      navigation : { // 네비게이션
		         nextEl : '.swiper-button-next3', // 다음 버튼 클래스명
		         prevEl : '.swiper-button-prev3', // 이번 버튼 클래스명
		      },
		   });
	
	</script>
</body>
</html>