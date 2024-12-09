package com.abc;

@WebServlet("/pay")
public class PaymentServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("https://www.sandbox.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=YOUR_BUTTON_ID");
    }
}
