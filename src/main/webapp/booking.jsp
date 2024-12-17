<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/booking.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <title>Booking Page</title>
</head>
<body>
<h1>Book Your Ticket</h1>
<form action="book" method="POST">
    <label for="movieName">Movie Name:</label>
    <select id="movieName" name="movieName" required>
        <option value="" disabled selected>Select a Movie</option>
        <option value="AVATAR 3">AVATAR 3</option>
        <option value="BUDDY">BUDDY</option>
        <option value="FATEH">FATEH</option>
        <option value="MACRO">MACRO</option>
        <option value="SMILE">SMILE</option>
    </select><br>

    <label for="seatNumber">Seat Number:</label>
    <select id="seatNumber" name="seatNumber" required>
        <option value="" disabled selected>Select a Seat</option>
        <% for(int i = 1; i <= 100; i++) { %>
        <option value="<%= String.format("%03d", i) %>"><%= String.format("%03d", i) %></option>
        <% } %>
    </select><br>

    <label for="customerEmail">Email:</label>
    <input type="email" id="customerEmail" name="customerEmail" required><br>

    <button type="submit">Book Ticket</button>
</form>
</body>
</html>
