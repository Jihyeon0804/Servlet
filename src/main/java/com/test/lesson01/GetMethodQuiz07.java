package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz07")
public class GetMethodQuiz07 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 한글 깨짐 방지 + html
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		// request params
		String address = request.getParameter("address");
		String card = request.getParameter("card");
		int price = Integer.valueOf(request.getParameter("price"));
		
		// 조건 검사 및 출력
//		전달받은 주소에 서울시 가 포함되어 있지 않으면, 배달 불가 지역입니다 를 출력하세요.
//		전달 받은 결제 카드가 신한카드인 경우 결제 불가 카드 입니다. 를 출력하세요.
		
		PrintWriter out = response.getWriter();
		out.print("<html><head><title></title></head><body>");
		
//		if (address.contains("서울시") == false) {	// or startsWith("서울시")
//			out.print("배달 불가 지역입니다.");
//			return;
//		} 
//		
//		if (card.equals("신한카드")) {
//			out.print("결제 불가 카드 입니다.");
//			return;
//		}
//		
//		out.print(address + "<b> 배달 준비중</b> <br>"
//				+ "결제금액 : " + price + "원");
		
		if (address.contains("서울시") == false) {	// or startsWith("서울시")
			out.print("배달 불가 지역입니다.");
		} else if (card.equals("신한카드")) {
			out.print("결제 불가 카드 입니다.");
		} else {
			out.print(address + "<b> 배달 준비중</b><br>");
			out.print("결제금액 : " + price + "원");
		}
		
		out.print("</body></html>");
	}
}
