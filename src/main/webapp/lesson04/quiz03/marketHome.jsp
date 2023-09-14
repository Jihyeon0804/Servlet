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
nav {height:70px; background-color:#FF7F50; font-size:25px;}
.contents {min-height:500px;}
.goods {border-style:solid; border-color:#FF7F50;}
.user-name {color:#FF7F50;}
footer {height:100px;}
</style>
</head>
<body>
	<div id="wrap" class="bg-secondary container">
		<header class="d-flex align-items-center justify-content-center">
			<h1 class="font-weight-bold"><a href="/lesson04/quiz03/marketHome.jsp" class="text-white">HONG당무 마켓</a></h1>
		</header>
		<nav>
			<ul class="nav nav-fill font-weight-bold">
				<li class="nav-item"><a href="#" class="nav-link text-white">리스트</a></li>
				<li class="nav-item"><a href="#" class="nav-link text-white">물건 올리기</a></li>
				<li class="nav-item"><a href="#" class="nav-link text-white">마이 페이지</a></li>
			</ul>
		</nav>
		<section class="contents bg-success">
			<div class="d-flex flex-wrap justify-content-between pt-3">
				<div class="goods p-2 mb-4">
					<img src="https://cdn.pixabay.com/photo/2023/09/03/18/01/lake-8231248_640.jpg" alt="goods" width="300">
					<div class="font-weight-bold">title</div>
					<div class="text-secondary">price</div>
					<div class="user-name">user01</div>
				</div>
			</div>
		</section>
		<footer class="bg-info d-flex align-items-center justify-content-center text-secondary">
			<div>Copyright © Hong 2023</div>
		</footer>
	</div>
</body>
</html>