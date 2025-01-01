package com.user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;


public class BookingDBUtil {

    public static boolean addBooking(String movieName, String seatNumber, String userEmail) {
        Connection con = null;
        PreparedStatement pstmt = null;
        boolean isSuccess = false;

        try {
            con = DBConnect.getConnection();
            String sql = "INSERT INTO Booking (movieName, seatNumber, userEmail) VALUES (?, ?, ?)";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, movieName);
            pstmt.setString(2, seatNumber);
            pstmt.setString(3, userEmail);

            int rowsInserted = pstmt.executeUpdate();
            if (rowsInserted > 0) {
                isSuccess = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (pstmt != null) pstmt.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return isSuccess;
    }
}
