<%@page import="java.util.Iterator"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제어문 활용</title>
</head>
<body>
<%
	// Map을 테이블로 표현
	// {"korean"=85, "english"=72, "math"=90, "science"=100}

	Map<String, Integer> scoreMap = new HashMap<>();
	scoreMap.put("korean", 85);
	scoreMap.put("english", 72);
	scoreMap.put("math", 90);
	scoreMap.put("science", 100);
%>
	
	<table border="1">
	<%
		Iterator<String> iter = scoreMap.keySet().iterator();
		while (iter.hasNext()) {
			String key = iter.next();	// map의 과목명을 추출 ; map에 put한 순서대로 나오지는 않을 수 도 있음
	%>
		<tr>
			<th>
				<%
					if (key.equals("korean")) {
						out.print("국어");
					} else if (key.equals("english")) {
						out.print("영어");
					} else if (key.equals("math")) {
						out.print("수학");
					} else if (key.equals("science")) {
						out.print("과학");
					}
				%>
			</th>
			<td><%= scoreMap.get(key) %></td>
		</tr>
	<%
		}
	%>
	</table>
</body>
</html>