package com.test.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MysqlService {
	// 필드 - DB 접속 정보 등
	private static MysqlService mysqlService = null;
	
	private String url = "jdbc:mysql://localhost:3306/test_230619"; // 도메인 뒤쪽에 접속할 데이터베이스 명까지 넣는다.
	private String id = "root";
	private String password = "root";
	
	private Connection conn;
	private Statement statement;
	private ResultSet res;
	
	// 메소드
	
	// Singleton 패턴 : MysqlService라는 객체가 단 한번만 생성되도록 하는 디자인 패턴(DB 연결을 여러 객체에서 하지 않도록 관리하기 위함)
	// new로 객체 생성X ; new로 하지 않으려면 static이 붙어 있어야함. 그래야 메모리에 할당되기 때문; static이면 new하지 않고 바로 객체 내의 메소드 사용 가능
	// static 이므로 this.mysqlService로 쓰지 않음
	public static MysqlService getInstance() {
		if (mysqlService == null) {
			mysqlService = new MysqlService();
		}
		return mysqlService;
	}
	
	// DB에 연결하는 메소드
	public void connect() {
		try {
			// 1. 드라이버 메모리에 로딩
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			
			// 2. DB Connection
			conn = DriverManager.getConnection(url, id, password);
			
			// 3. statement: DB와 쿼리를 실행하기 위한 준비
			statement = conn.createStatement();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	// DB 연결 해제하는 메소드
	public void disconnect() {
		try {
			statement.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	// 쿼리문 수행 - Read(Select) ; 결과값을 받아옴(return)
	public ResultSet select(String query) throws SQLException {
		res = statement.executeQuery(query); // 내 책임 아님; 나에게 sql query문을 준 사람의 책임
		return res;
	}

	// 쿼리문 수행 - Read(Select) 이외의 것. 즉, Create, Update, Delete(insert, update, delete) ; 결과값을 받아오지 않음(void)
	public void update(String query) throws SQLException {
		statement.executeUpdate(query);
	}
	
}
