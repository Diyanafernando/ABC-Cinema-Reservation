package com.abc;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

@WebServlet("/book")
public class BookingServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String movieName = request.getParameter("movieName");
        String seatNumber = request.getParameter("seatNumber");

        try {
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/abc_cinema", "root", "password");
            String query = "INSERT INTO bookings (movie_name, seat_number) VALUES (?, ?)";
            PreparedStatement stmt = con.prepareStatement(query);
            stmt.setString(1, movieName);
            stmt.setString(2, seatNumber);
            stmt.executeUpdate();
            response.sendRedirect("success.jsp");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}