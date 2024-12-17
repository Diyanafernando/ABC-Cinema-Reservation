<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feedback Form</title>
    <link rel="stylesheet" href="css/feedback.css">
</head>
<body>
<div class="container">
    <h1>Feedback Form</h1>

    <form action="feedback" method="POST">

        <label for="fullName">Full Name:</label>
        <input type="text" id="fullName" name="fullName" placeholder="Enter your full name" required>

        <label for="email">Email Address:</label>
        <input type="email" id="email" name="email" placeholder="Enter your email" required>

        <label for="message">Your Feedback:</label>
        <textarea id="message" name="message" rows="5" placeholder="Write your feedback here..." required></textarea>

        <button type="submit">Submit Feedback</button>
    </form>
</div>

</body>
</html>
