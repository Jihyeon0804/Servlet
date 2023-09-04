package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/ex02") // 반드시 슬래시로 시작 ; 어노테이션한 주소와 web.xml 주소가 겹치는 것이 있으면 안됨
public class UrlMappingEx02 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 한글 깨짐 방지
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html"); // html 태그로 구성
		
		PrintWriter out = response.getWriter();
		
		// 태그와 반복문 혼합
		
		// 서블릿(Servlet) : 자바 코드 + 태그
		int sum = 0;
		for (int i = 1; i <= 10; i++) {	// 1 ~ 10
			sum += i;
		}
		// println 으로 해도 줄바꿈 안됨(태그이므로 <br>태그 사용)
		out.print("<html><head><title>합계</title></head><body>");
		// 합계:55
		out.print("합계:<b>" + sum + "</b>");
		out.print("</body></html>");
		// print가 나누어져 있더라도 다 이어져서 나오므로 상관X
	}
}
