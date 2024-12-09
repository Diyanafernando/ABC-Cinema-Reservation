<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Booking Page</title>
</head>
<body>
<h1>Book Your Ticket</h1>
<form action="book" method="POST">
    <label for="movieName">Movie Name:</label>
    <input type="text" id="movieName" name="movieName" required><br>

    <label for="seatNumber">Seat Number:</label>
    <input type="text" id="seatNumber" name="seatNumber" required><br>

    <label for="customerEmail">Email:</label>
    <input type="email" id="customerEmail" name="customerEmail" required><br>

    <button type="submit">Book Ticket</button>
</form>
</body>
</html>
