<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CINX - Amazing Movie Experience</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="booking.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
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
