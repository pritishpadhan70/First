package com.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBUtility {

	final static String url = "jdbc:mysql://localhost:3306/test";
	final static String userName = "root";
	final static String password = "tiger";
	public static Connection conn;
	public static Statement stmt;

	public static ResultSet getResultSet(final String query) throws SQLException {
		
		ResultSet rs = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, userName, password);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(query);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}finally{
			//conn.close();
			//stmt.close();
		}
		System.out.println(rs);
		return rs;
	}
}
