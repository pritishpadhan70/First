package com.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBUtility {

	final static String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	final static String userName = "scott";
	final static String password = "tiger";
	public static Connection conn = null;
	public static Statement stmt = null;

	public static ResultSet getResultSet(final String query) throws SQLException {
		
		ResultSet rs = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
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
