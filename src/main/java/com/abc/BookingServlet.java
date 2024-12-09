package com.abc;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/book")
public class BookingServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String movieName = request.getParameter("movieName");
        String seatNumber = request.getParameter("seatNumber");
        String customerEmail = request.getParameter("customerEmail");

        try {
            Connection con = DatabaseConnection.getConnection();
            String query = "INSERT INTO bookings (movie_name, seat_number, customer_email) VALUES (?, ?, ?)";
            PreparedStatement stmt = con.prepareStatement(query);
            stmt.setString(1, movieName);
            stmt.setString(2, seatNumber);
            stmt.setString(3, customerEmail);
            stmt.executeUpdate();
            response.sendRedirect("success.jsp");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
