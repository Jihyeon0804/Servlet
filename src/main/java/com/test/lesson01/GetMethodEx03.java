package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/ex03")
public class GetMethodEx03 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 한글 깨짐 방지 -> plain
		//response.setCharacterEncoding("utf-8");
		//response.setContentType("text/plain");
		
		// 한글 깨짐 방지 -> json string
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/json");
		
		// Request Parameter
		String userId = request.getParameter("user_id"); // 해당하는 값이 얻어짐 ; 파라미터와 일치하는 값이 꺼내짐
		String name = request.getParameter("name");
		int age = Integer.valueOf(request.getParameter("age")); // getParameter는 무조건 String타입이므로 타입변환 필요
		// request.getParameter()의 반환값이 null일 경우 null을 숫자로 받을 수 없으므로 에러 발생
		
		// 출력
		PrintWriter out = response.getWriter();
//		out.println("user_id:" + userId);
//		out.println("name:" + name);
//		out.println("age:" + age);
		
		// JSON으로 출력
		// {"user_id":"jeon", "name":"김지현", "age":30}
		// \" => "
		out.print("{\"user_id\":\"" + userId + "\", \"name\":\""
				+ name + "\", \"age\":" + age + "}");
	}
}
