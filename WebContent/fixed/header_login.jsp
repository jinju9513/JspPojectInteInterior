<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/main.css" />
<style>
#search_bar {
	width: auto;
	margin-left: auto;
	margin-right: 2%;
	display: inherit;
}
/* .search {
	width:auto;
	margin-left:auto;
	display:inherit;
	} */
#close {
	margin-bottom: 50px;
	font-size: 20px;
	color: white;
}

#event_popup {
	text-align: center;
	resize: none;
	width: 100%;
	position: fixed;
	/* display:none; */
	/* align:center; */
	padding: 12px;
	/* background-color: #A4C2EF; */
	background-color: #a7bed3;
	display: block;
	border: 0;
	z-index: 33;
}

#header {
	margin-top: 57px;
	z-index: 33 !important;
}

#header.alt {
	margin-top: 30px important;
}
</style>
</head>
<body>
	<a href="/test01/app/main/index.jsp" class="logo">내 방은 <span>못말려</span></a>

	<div id="search_bar">
		<input
			style="line-height: 1px; border-top: 0px; border-left: 0px; border-right: 0px; border-bottom-color: #8E8E8E; background: transparent; input: focus; outline: none;"
			placeholder="" type="search"> <i class="fa fa-search"
			aria-hidden="true"></i>
	</div>
	<nav>
		<ul>
			<li><a href="${pageContext.request.contextPath}/app/myPage/profile.jsp">My Page</a></li>
			<li><a href="${pageContext.request.contextPath}/user/Logout.me">Logout</a></li>
			<li><a href="#menu">Menu</a></li>
		</ul>
	</nav>
</body>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
	if ($("#close").length == 0) {
		$("#header").css("margin-top", "0px");
	}

	function close_popup() {
		var closeEvent = document.getElementById('close');
		closeEvent.parentNode.style.display = 'none';
		var header = document.getElementById('header');
		header.style.marginTop = '0px';
	}
</script>
</html>