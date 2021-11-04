<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE HTML>
<!--
	Formula by Pixelarity
	pixelarity.com | hello@pixelarity.com
	License: pixelarity.com/license
-->
<html>
<head>


<c:set var="list" value="${brag_board}" />
<c:set var="files" value="${requestScope.files}" />
<title>문의하기</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/main.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/app/myPage/myPage.css" />
</head>
<style>
img {
	width: 240px;
	border-radius: 0.5em;
}

.name {
	font-weight: 600;
}

.box {
	border: none !important;
	margin-top: -2% !important;
}

.top {
	margin-left: 6% !important;
	margin-right: 6% !important;
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
			<section id="main" class="main">
				<div class="inner">
					<header class="major">
						<h3>Brag</h3>
					</header>
					<div class="top">
						<h3>제목 ${list.getBrag_board_title()}</h3>
						<div class="name" style="font-size: 14px;">작성자 : ${list.getUser_id()}</div>
						<div style="font-size: 14px;">${list.getBrag_board_date()}</div>
						<ul class="actions"
							style="display: flex; justify-content: flex-end; font-size: 10px;">
							<li><input type="button" value="write" class="primary" onclick="location.href='${pageContext.request.contextPath}/Brag/Brag_Write.br'"></li>
							<li><input type="button" value="list" class="primary" onclick="location.href='${pageContext.request.contextPath}/Brag/Brag_BoardList.br'"></li>
							<li><input type="button" value="edit" onclick="location.href='${pageContext.request.contextPath}/Brag/Brag_Edit.br?brag_board_no=${list.getBrag_board_no()}'"></li>
							<li><input type="button" value="delete" onclick="location.href='${pageContext.request.contextPath}/Brag/Brag_BoardDeleteOk.br?brag_board_no=${list.getBrag_board_no()}'"></li>
						</ul>
						<hr style="margin-top: 0;">
						<c:if test="${files != null}">
							<div>첨부파일</div>
							<c:forEach var="files" items="${files}">
								<a
									href="${pageContext.request.contextPath}/Brag/FileDownload.br?brag_file_name=${file.getBrag_file_name()}"><c:out
										value="${file.getFile_name_original()}" /></a>
								<br>
							</c:forEach>
						</c:if>
						<hr />
					</div>
					<!-- 클래스명은 변경하면 안 됨 -->
					<div class="col-6"
						style="float: left; width: 53%; padding-left: 6%;">
						<img src="https://ktsmemo.cafe24.com/p/0630.jpg"> <img
							src="https://ktsmemo.cafe24.com/p/0630.jpg"> <img
							src="https://ktsmemo.cafe24.com/p/0630.jpg"> <img
							src="https://ktsmemo.cafe24.com/p/0630.jpg">

					</div>
					<div class="box">
						<fieldset style="width: 43%; padding-left: 2%;">
							<h3>
								<pre>${list.getBrag_board_content()}</pre>
							</h3>
						</fieldset>
					</div>
				</div>
			</section>
		</div>
		<!-- 댓글 -->
		<section class="main accent2"
			style="padding: 3%; margin: 0 14% 0 14%;">
			<header class="major" style="text-align: left;">
				<h3>Comment</h3>
			</header>
			<form method="post" action="#" class="combined" style="width: auto;">
				<textarea name="content" id="content" placeholder="비속어를 사용하지 말아주세요."
					class="invert" rows="5"
					style="border-radius: 0; resize: none; font-size: 12px !important; float: left; width: 90% !important;"></textarea>
				<input id="register" type="button" class="primary" value="add"
					style="font-size: 12px !important;" onclick="comment()">
			</form>
			<form id="replies" class="combined"
				style="flex-direction: column; margin: 0; display: contents; font-size: 12px !important;">
				<p style="width: fit-content;">댓글이 없습니다.</p>
			</form>
		</section>



	</div>
	<!-- Wrapper 끝 -->



	<!-- Footer -->
	<footer id="footer">
		<jsp:include page="/fixed/footer.jsp"></jsp:include>
	</footer>

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

</body>
<script src="//code.jquery.com/jquery-3.5.1.min.js"></script>
</html>