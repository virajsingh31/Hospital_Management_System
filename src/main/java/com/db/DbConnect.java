package com.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConnect {
	
	private static Connection conn;
	public static Connection getConn(){
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital_1","root","12345");
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return conn;
	}

}
