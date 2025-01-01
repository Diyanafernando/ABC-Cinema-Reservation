package com.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/AddBooking")
public class AddBooking extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String movieName = request.getParameter("movieName");
        String seatNumber = request.getParameter("seatNumber");
        String userEmail = request.getParameter("userEmail");

        boolean isBooked = BookingDBUtil.addBooking(movieName, seatNumber, userEmail);

        if (isBooked) {
            request.setAttribute("successMessage", "Booking successful!");
            RequestDispatcher dispatcher = request.getRequestDispatcher("payment.jsp");
            dispatcher.forward(request, response);
        } else {
            request.setAttribute("errorMessage", "Booking failed. Please try again.");
            RequestDispatcher dispatcher = request.getRequestDispatcher("booking.jsp");
            dispatcher.forward(request, response);
        }
    }

}
