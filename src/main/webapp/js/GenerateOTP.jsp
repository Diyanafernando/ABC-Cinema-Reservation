<%@ page import="java.util.*, javax.mail.*, javax.mail.internet.*" %>
<%
    // Step 1: Retrieve email and other form details
    String userEmail = request.getParameter("email");

    // Step 2: Generate a random 6-digit OTP
    Random random = new Random();
    int otp = 100000 + random.nextInt(900000);

    // Step 3: Save the OTP and email in the session
    session.setAttribute("generatedOTP", otp);
    session.setAttribute("userEmail", userEmail);

    // Step 4: Configure email settings
    String host = "smtp.gmail.com"; // Update SMTP server
    String from = "your-email@gmail.com"; // Replace with your email
    String password = "your-email-password"; // Replace with your email password

    Properties properties = new Properties();
    properties.put("mail.smtp.host", host);
    properties.put("mail.smtp.port", "587");
    properties.put("mail.smtp.auth", "true");
    properties.put("mail.smtp.starttls.enable", "true");

    Session mailSession = Session.getDefaultInstance(properties, new Authenticator() {
        protected PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication(from, password);
        }
    });

    try {
        // Step 5: Send OTP email
        MimeMessage message = new MimeMessage(mailSession);
        message.setFrom(new InternetAddress(from));
        message.addRecipient(Message.RecipientType.TO, new InternetAddress(userEmail));
        message.setSubject("Your OTP for Payment");
        message.setText("Dear user, your OTP for payment verification is: " + otp);

        Transport.send(message);

        // Step 6: Redirect to OTP verification page
        response.sendRedirect("otpVerification.jsp");
    } catch (MessagingException mex) {
        out.println("Error: " + mex.getMessage());
    }
%>
