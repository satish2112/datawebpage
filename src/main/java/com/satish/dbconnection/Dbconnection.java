package com.satish.dbconnection;
import java.sql.*;
public class Dbconnection {
	private static Connection con = null;
	public static Connection getConnection() {
		try {
			if (con == null) {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				con = DriverManager.getConnection("jdbc:oracle:thin:@//140.238.231.8:1521/xepdb1", "TESTINGUAT",
						"T6ThaP3xY6GhdRP2KuP3");
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return con;
	}

}