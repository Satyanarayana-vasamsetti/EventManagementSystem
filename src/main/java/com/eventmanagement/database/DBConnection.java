package com.eventmanagement.database;

import java.sql.Connection;
import java.sql.DriverManager;


public class DBConnection {
    private static Connection con =  null;
	private static String Driver="com.mysql.cj.jdbc.Driver";
	private static String URL="jdbc:mysql://127.0.0.1:3306/eventdb";
	private static String Username="root";
	private static String Password="Satya@22551A4261";
	public static Connection getConnection() {
		try {
			Class.forName(Driver);
			con = DriverManager.getConnection(URL, Username, Password);	
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return con;
	}
	
}
