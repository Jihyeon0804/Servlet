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

<title>Quiz04_1</title>
</head>
<body>
<%
	int length = Integer.valueOf(request.getParameter("length"));
	String[] types = request.getParameterValues("type");

%>
	<div class="container">
		<h1>길이 변환 결과</h1>
		<h3><%= length %>cm</h3>
		<hr>
		
		<h2>
			<%
				if (types != null) {
					for (String type : types) {
						if (type.equals("inch")) {
							double inch = length * 0.393701;
							out.print(inch + " in<br>");
						} else if (type.equals("yard")) {
							double yard = length * 0.0109361;
							out.print(yard + " yd<br>");
						} else if (type.equals("feet")) {
							double feet = length * 0.0328084;
							out.print(feet + " ft<br>");
						} else if (type.equals("meter")) {
							double meter = length / 100.0;
							out.print(meter + " m");
						}
					}
				}
			%>
		</h2>
	
	
	</div>
</body>
</html>