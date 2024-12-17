<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // Step 1: Retrieve entered OTP
    String enteredOTP = request.getParameter("otp");

    // Step 2: Retrieve the generated OTP from the session
    int generatedOTP = (int) session.getAttribute("generatedOTP");

    // Step 3: Compare entered OTP with the generated OTP
    if (String.valueOf(generatedOTP).equals(enteredOTP)) {
%>
<h2 style="color: green;">Payment Successful!</h2>
<%
} else {
%>
<h2 style="color: red;">Invalid OTP. Please try again.</h2>
<a href="otpVerification.jsp">Back to OTP Verification</a>
<%
    }
%>
