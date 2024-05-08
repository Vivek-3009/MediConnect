package com.virtusa.mediconnect.utility;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ResourceBundle;

public class DBUtil {
	private static ResourceBundle bundle = ResourceBundle.getBundle("application");
    
    private static final String JDBC_URL = bundle.getString("JDBC_URL");
    private static final String USERNAME = bundle.getString("USERNAME");
    private static final String PASSWORD = bundle.getString("PASSWORD");

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(JDBC_URL, USERNAME, PASSWORD);
    }
}
