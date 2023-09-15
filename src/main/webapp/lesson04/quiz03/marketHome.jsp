<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- bootstrap CDN -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
<title>Quiz03(홍당무 마켓)</title>
<style>
#wrap {height:1000px;}
header {height:100px; background-color:#FF7F50;}
a:hover {text-decoration:none;}
nav {height:70px; background-color:#FF7F50; font-size:25px;}
.contents {min-height:500px;}
.no-img {background-color:#FFF;}
.goods {border-style:solid; border-color:#FF7F50;}
.goods:hover {background-color:#FFDAB9;}
.user-name {color:#FF7F50;}
footer {height:100px;}
</style>
</head>
<body>
<%
	// DB 연결
	MysqlService ms = MysqlService.getInstance();
	ms.connect();
	
	// DB select
	String selectQuery = "select * from `seller` A join `used_goods` B on A.id=B.sellerId";
	ResultSet res = ms.select(selectQuery);
%>
	<div id="wrap" class="bg-secondary container">
		<header class="d-flex align-items-center justify-content-center">
			<h1 class="font-weight-bold"><a href="/lesson04/quiz03/marketHome.jsp" class="text-white">HONG당무 마켓</a></h1>
		</header>
		<nav>
			<ul class="nav nav-fill font-weight-bold">
				<li class="nav-item"><a href="#" class="nav-link text-white">리스트</a></li>
				<li class="nav-item"><a href="/lesson04/quiz03/postGoods.jsp" class="nav-link text-white">물건 올리기</a></li>
				<li class="nav-item"><a href="#" class="nav-link text-white">마이 페이지</a></li>
			</ul>
		</nav>
		<section class="contents bg-success">
			<div class="d-flex flex-wrap justify-content-between pt-3">
<%
				while (res.next()) {
%>
				<div class="goods p-2 mb-4">
<%
					if (res.getString("pictureUrl") != null) {
%>
					<img src="<%= res.getString("pictureUrl") %>" alt="goods" width="300">
<%
					} else {	
%>
					<div class="no-img d-flex align-items-center justify-content-center p-5"><h3 class="font-weight-bold text-secondary m-0">이미지 없음</h3></div>
<%
					}
%>
					<div class="font-weight-bold"><%= res.getString("title") %></div>
					<div class="text-secondary"><%= res.getInt("price") %></div>
					<div class="user-name"><%= res.getString("nickname") %></div>
				</div>
<%
				}
%>
			</div>
		</section>
		<footer class="bg-info d-flex align-items-center justify-content-center text-secondary">
			<div>Copyright © Hong 2023</div>
		</footer>
	</div>
</body>
</html>