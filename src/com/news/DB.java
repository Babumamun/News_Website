package com.news;
import java.sql.Connection;
import java.sql.DriverManager;



public class DB {
	 private static String driver;
	    private static String url;
	    private static String username;
	    private static String password;
	    private static Connection conn;
	    public static Connection getConn(){
	        try {
	            if(conn==null||conn.isClosed()){
	                 driver="com.mysql.cj.jdbc.Driver";
	                 url="jdbc:mysql://localhost:3306/mydb?serverTimezone=UTC";
	                 username="root";
	                 password="12345678";
	                 Class.forName(driver);
	                 conn= DriverManager.getConnection(url,username,password);
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return conn; 
}
}