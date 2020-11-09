package com.kritima.TechBlog.web.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class connectsql {

	private static Connection conn;
	public static Connection getConnect()
	{
		
		try {
			if(conn==null) {
		Class.forName("com.mysql.jdbc.Driver");
		conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/techblog","root","kshinchan11r");
			}
		}
		catch(Exception e){
			System.out.println(e);
		}
		return conn;
	}
}
