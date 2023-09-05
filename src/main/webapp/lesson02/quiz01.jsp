<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz01</title>
</head>
<body>
<!-- 1. 1부터 n까지의 합계를 구하는 함수
	jsp의 선언문 <%! %> 문법을 사용해서 1부터 N까지의 합을 구하는 함수를 만드세요. -->
<%!

	public int getSum(int n) {
		int sum = 0;
		for (int i = 1; i <= n; i++) {
			sum += i;
		}
		return sum;
	}

%>
<h2>1부터 50까지의 합은 <%= getSum(50) %>입니다.</h2>



<!-- 2. 점수들의 평균 구하기
	스크립틀릿(scriptlet) <% %> 문법을 사용해서 주어진 점수들의 평균을 구하세요. -->
	
<%
	int[] scores = {80, 90, 100, 95, 80};
	int sum = 0;
	for (int i = 0; i < scores.length; i++) {
		sum += scores[i];
	}
	double average = sum / (double)scores.length;
	
%>
<h2>평균 점수는 <%= average %>입니다.</h2>

<!-- 3. 채점 결과
	아래 채점표로 시험점수가 몇점인지 구하세요 -->
<%
	List<String> scoreList = List.of("X", "O", "O", "O", "X", "O", "O", "O", "X", "O");
	int score = 0;
	for (int i = 0; i < scoreList.size(); i++) {	// 0 ~ 9 index
		if (scoreList.get(i).equals("O")) {
			score += 100 / scoreList.size();
		}
	}
	
%>
<h2>채점 결과는 <%= score %>점 입니다.</h2>

<!-- 4. 나이 구하기
	주어진 생년월일을 가진 사람의 나이를 구하세요. -->
<%
	String birthDay = "20010820";		// 2001	 	0 ~ 3 index
	int birth = Integer.valueOf(birthDay.substring(0, 4));
	int age = 2023 - birth;
%>
<h2><%= birthDay %>의 나이는 <%= age %>세 입니다.</h2>

</body>
</html>