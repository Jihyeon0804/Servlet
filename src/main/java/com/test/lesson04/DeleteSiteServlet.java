package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/delete-site")
public class DeleteSiteServlet extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 받아온 id를 DB에서 삭제
		
		// 응답 생략 (302)
		
		// request parameter
		int id = Integer.valueOf(request.getParameter("id"));

		// DB 연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		// DB delete
		String deleteQuery = "delete from `site` where id = " + id;
		
		try {
			ms.update(deleteQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// DB 연결 해제
		ms.disconnect();
		
		// redirect -> siteList.jsp
		response.sendRedirect("/lesson04/quiz02/siteList.jsp");
	}
}
