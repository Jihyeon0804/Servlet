<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>레이아웃</title>
<!-- bootstrap CDN -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

<style>
header {height:50px;}
.bottom {height:900px;}
.contents {height:90%;}
footer {height:10%}
</style>
</head>
<body>
	<div id="wrap" class="bg-secondary">
		<header class="bg-success">
			<jsp:include page="header.jsp" />
		</header>
		<div class="bottom bg-light d-flex">
			<aside class="bg-info col-2">
				<jsp:include page="menu.jsp" />
			</aside>
			<div class="right bg-secondary col-10">
				<section class="contents bg-warning">
					<%
						String viewName = "content2.jsp";
					%>
					<jsp:include page="<%= viewName %>" />
				</section>
				<footer class="bg-danger">
					<jsp:include page="footer.jsp" />
				</footer>
			</div>
		</div>
	</div>	
</body>
</html>