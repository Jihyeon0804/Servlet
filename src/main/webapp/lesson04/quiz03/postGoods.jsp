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
<title>Quiz03(물건 올리기)</title>
<style>
#wrap {height:1000px;}
header {height:100px; background-color:#FF7F50;}
a:hover {text-decoration:none;}
nav {height:70px; background-color:#FF7F50; font-size:25px;}
.contents {min-height:500px;}
footer {height:100px;}
</style>
</head>
<body>
<%
	// DB 연결
	MysqlService ms = MysqlService.getInstance();
	ms.connect();
	
	// DB select
	String selectQuery = "select * from `seller`";
	ResultSet res = ms.select(selectQuery);
%>
	<div id="wrap" class="container">
		<header class="d-flex align-items-center justify-content-center">
			<jsp:include page="header.jsp" />
		</header>
		<nav>
			<jsp:include page="nav.jsp" />
		</nav>
		<section class="contents">
			<div class="p-5">
				<div>
					<h1>물건 올리기</h1>
				</div>
				<form method="post" action="/lesson04/post-goods">
					<div class="d-flex">
						<div class="input-group mb-3">
							<select class="form-control" name="nickname">
								<option>-아이디-</option>
<%
								while (res.next()) {
%>
								<option><%= res.getString("nickname") %></option>
<%
								}
%>
							</select>
						</div>
						<div class="input-group mb-3">
							<input type="text" class="form-control" placeholder="제목" name="title">
						</div>
						<div class="input-group mb-3">
							<input type="text" class="form-control" placeholder="가격" name="price">
							<div class="input-group-append">
						    	<span class="input-group-text">원</span>
						  	</div>
						</div>
					</div>
					<div class="input-group mb-3">
						<textarea class="form-control" rows="8" name="description"></textarea>
					</div>
					<div class="input-group mb-3">
						<div class="input-group-prepend">
					    	<span class="input-group-text">이미지 url</span>
					  	</div>
						<input type="text" class="form-control" name="pictureUrl">
					</div>
					<button type="submit" class="btn btn-light btn-block">저장</button>
				</form>
			</div>
		</section>
		<footer class="d-flex align-items-center justify-content-center text-secondary">
			<jsp:include page="footer.jsp" />
		</footer>
	</div>
</body>
</html>