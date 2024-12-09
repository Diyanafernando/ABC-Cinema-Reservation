<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feedback Form</title>
</head>
<body>
<h1>Feedback Form</h1>

<!-- Start of Feedback Form -->
<form action="feedback" method="POST">

    <!-- Full Name Field -->
    <label for="fullName">Full Name:</label>
    <input type="text" id="fullName" name="fullName" placeholder="Enter your full name" required><br><br>

    <!-- Email Field -->
    <label for="email">Email Address:</label>
    <input type="email" id="email" name="email" placeholder="Enter your email" required><br><br>

    <!-- Feedback Message -->
    <label for="message">Your Feedback:</label><br>
    <textarea id="message" name="message" rows="5" cols="40" placeholder="Write your feedback here..." required></textarea><br><br>

    <!-- Submit Button -->
    <button type="submit">Submit Feedback</button>
</form>
<!-- End of Feedback Form -->

</body>
</html>
