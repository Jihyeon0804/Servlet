<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz02-1</title>
</head>
<body>
<%
	String type = request.getParameter("type");
	Date now = new Date();
	SimpleDateFormat sdf = null;
	if (type.equals("time")) { // time
		sdf = new SimpleDateFormat("현재 시간은 HH시 mm분 ss초 입니다.");
	} else { // date
		sdf = new SimpleDateFormat("오늘 날짜는 yyyy년 MM월 dd일 입니다.");
	}
	String result = sdf.format(now);
%>
	<div class="container">
		<div class="display-1"><%= result %></div>
	</div>
</body>
</html>