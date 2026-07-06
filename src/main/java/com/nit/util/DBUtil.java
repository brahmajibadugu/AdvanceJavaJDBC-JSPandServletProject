package com.nit.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {
	private final static String url = "jdbc:mysql://localhost:3306/emp_db_55";
	private final static String u_name = "root";
	private final static String paswd = "root";
	
	public static Connection getConnection() throws ClassNotFoundException, SQLException
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn=DriverManager.getConnection(url, u_name, paswd);
		return conn;
	}

}
