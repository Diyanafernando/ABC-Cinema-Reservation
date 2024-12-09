package com.abc;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseConnection {
    private static Connection connection;

    public static Connection getConnection() {
        if (connection == null) {
            try {
                // Update the database URL, username, and password as needed
                String url = "jdbc:mysql://localhost:3306/abc_cinema";
                String username = "root";
                String password = "1234";

                Class.forName("com.mysql.cj.jdbc.Driver");
                connection = DriverManager.getConnection(url, username, password);
                System.out.println("Connected to MySQL Database!");
            } catch (Exception e) {
                e.printStackTrace();
                System.out.println("Failed to connect to the database");
            }
        }
        return connection;
    }
}
