package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/post-goods")
public class GoodsListServlet extends HttpServlet {

	 @Override
	 public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		 // postGoods에서 등록된 정보를 받아서 marketHome에 뿌리기
		 
		 // 응답 생략 (302)
		 
		 // request params
		 String nickname = request.getParameter("nickname");
		 String title = request.getParameter("title");
		 int price = Integer.valueOf(request.getParameter("price"));
		 String description = request.getParameter("description");
		 String pictureUrl = request.getParameter("pictureUrl");
		 
		 // DB 연결
		 MysqlService ms = MysqlService.getInstance();
		 ms.connect();
		 
		 // DB insert
		 String insertQuery = "insert into `seller` (`nickname`) values ('" + nickname + "')";
		 String insertQuery2 = "insert into `used_goods` (`sellerId`, `title`, `price`, `description`, `pictureUrl`) values (4, '"
		 + title + "', '" + price + "', '" + description + "', '" + pictureUrl + "')";
		 try {
			ms.update(insertQuery);
			ms.update(insertQuery2);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		 
		 // DB 연결 해제
		 ms.disconnect();
		 
		 // redirect -> marketHome
		 response.sendRedirect("/lesson04/quiz03/marketHome.jsp");
	 }
}
