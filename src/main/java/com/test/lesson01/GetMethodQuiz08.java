package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz08")
public class GetMethodQuiz08 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 한글 깨짐 방지 + html
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		// request param
		String search = request.getParameter("search");
		
		List<String> list = new ArrayList<>(Arrays.asList(
		        "강남역 최고 맛집 소개 합니다.",
		        "오늘 기분 좋은 일이 있었네요.", 
		        "역시 맛집 데이트가 제일 좋네요.", 
		        "집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
		        "자축 저 오늘 생일 이에요."));
		
		// 리스트 순회 -> 출력
		PrintWriter out = response.getWriter();
		
		Iterator<String> iter = list.iterator();
		while (iter.hasNext()) {
			String line = iter.next();
			
			// 검색
//			if (line.contains(search)) {
//				out.print(line + "<br>");
//			}
			// 보너스 풀이 다른 방법 indexOf(search) 앞뒤로 <br>태그 끼워넣기...
			
			// 보너스 풀이1) split 이용하기 - 단점 : 한 문장에 검색한 단어가 여러 개일 경우도 생각해야함
//			if (line.contains(search)) {
//				String[] words = line.split(search);
//				out.print(words[0] + "<b>" + search + "</b>" + words[1] + "<br>");
//			}
			
			// 보너스 풀이2)  replace 이용하기 - 검색한 단어가 중복되더라도 상관X
			if (line.contains(search)) {
				line = line.replace(search, "<b>" + search + "</b>");
				out.print(line + "<br>");
			}
			
		}
	}

}
