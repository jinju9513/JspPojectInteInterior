<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
     <link rel="stylesheet" type="text/css" href="../../assets/css/manage.css">
     
</head>


<body>
<%
	Date date=new Date();
	String cur=date.toLocaleString();
%>
    <div class="header">
        <div class="head">
            <div class="log">
                <ul>
                    
                    <li>
                        <a href="${pageContext.request.contextPath }/user/Logout.me"> 로그아웃</a>
                    </li>
                    <li>
                        <a href="manageHome.jsp">Home</a>
                    </li>
                   
                </ul>
            </div>
        </div>
    </div>

    <div class="nav">
        <div class="box">
            <div class="admin">
                <div class="text">
                    관리자님<br>
                    접속시간 : <%=cur %>
                    <br>
                    <button onclick="location.href='${pageContext.request.contextPath }/user/Logout.me'">로그아웃</button>
                 </div>
                
            </div>
            <div class="menu">
                <div class="text1">
                    정보관리
                </div>
                 <div class="menu1">
                    <div class="manage">
                        <ul>
                    <a href="manageUser.jsp"><li>회원관리</li></a>
              <!--   		<a href="manageMovie.jsp"><li>영화관리</li></a>
                            <a href="manageReserve.jsp"><li>영화관람정보</li></a>
                            <a href="manageMovieAfter.jsp"><li>상영예정작정보</li></a>
                            <a href="manageSnack.jsp"><li>스낵관리</li></a>
                            <a href="manageReserveSnack.jsp"><li>스낵사용정보</li></a>
                            <a href="manageGift.jsp"><li>선물사용관리</li></a> -->
                        </ul>
                    </div>
                </div><br>
                <div class="text1">
                    정보등록<br>
                </div><br>
                <div class="menu2">
                    <div class="manage">
                        <ul>
                            <a href="manageInsertStore.jsp"><li>스토어 등록</li></a>
                            <a href="manageInsertEvent.jsp"><li>이벤트 등록</li></a>
                     		<a href="manageInsertNotice.jsp"><li>공지사항등록</li></a>
                   <!--   	<a href="manageInsertFAQ.jsp"><li>FAQ등록</li></a>
                            <a href="manageInsertMovieAfter.jsp"><li>상영예정작등록</li></a> -->
                        </ul>
                    </div>
                </div><br>
                <div class="text1">
                    고객센터<br>
                </div><br>
                <div class="menu1" style="height: 140px;">
                    <div class="manage">
                        <ul>
                            <a href="manageNotice.jsp"><li>공지사항</li></a>
                            <a href="manageFAQ.jsp"><li>FAQ</li></a>
                            <a href="manageOneByOne.jsp"><li>1대1문의</li></a>
                            
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
<div style="height: 1000px; overflow: auto;">
    <div class="container" style="text-align: center;margin-top: 3%;">
       	<div class="movieInsert">
        <h1>스토어 등록</h1>
        <form enctype="multipart/form-data" method="post" action="${pageContext.request.contextPath }/manage/ManageInsertStoreOk.mn">
            <table border="1" width="700">
                <tr>
                	<td>카테고리</td>
                	<td>
                		<select name="product_category" class="select1">
                			<option value="소품">소품</option>
                			<option value="가구">가구</option>
                		</select>
                	</td>
                </tr>
                <tr>
                	<td>세부 카테고리</td>
                	<td><input type="text" name="product_subcategory"></td>
                </tr>
                <tr>
                	<td>상품 이름</td>
                	<td><input type="text" name="product_name"></td>
                </tr>
                <tr>
                	<td>상품 가격</td>
                	<td><input type="text" name="product_price"></td>
                </tr>
                <tr>
                	<td>상품 내용</td>
                	<td><textarea rows="20" cols="60" name="product_info"></textarea></td>
                </tr>
                <tr>
                	<td>메인 상품 이미지</td>
                	<td><input type="file" name="product_img"></td>
                </tr>
                <tr>
                	<td>상품 이미지1</td>
                	<td><input type="file" name="product_steel1"></td>
                </tr>
                <tr>
                	<td>상품 이미지2</td>
                	<td><input type="file" name="product_steel2"></td>
                </tr>
                <tr>
                	<td>상품 이미지3</td>
                	<td><input type="file" name="product_steel3"></td>
                </tr>
               
              	<tr>
              		<td colspan="2" width="100px"><input type="submit" value="등록" ></td>
            </table>
        </form>
    </div>
    </div>
    <div style="clear: both;"></div>
    </div>
</body>
</html>