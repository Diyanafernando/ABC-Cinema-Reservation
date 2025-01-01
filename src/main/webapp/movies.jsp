<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movies</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }

        h1 {
            text-align: center;
            color: #333;
            margin: 20px 0;
        }

        .movie-list {
            max-width: 800px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .movie-item {
            display: flex;
            justify-content: space-between;
            align-items: center;
            border-bottom: 1px solid #ddd;
            padding: 10px 0;
        }

        .movie-item:last-child {
            border-bottom: none;
        }

        .movie-title {
            font-size: 18px;
            color: #555;
        }

        .booking-button {
            padding: 10px 15px;
            background-color: #0077d1;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            text-decoration: none;
        }

        .booking-button:hover {
            background-color: #005fa3;
        }
    </style>
</head>
<body>
    <h1>Movies-Ticket</h1>
    <div class="movie-list">
        <%-- Example movie data, replace with dynamic data from your server --%>
        <div class="movie-item">
            <span class="movie-title">Movie 1: The Adventure Begins</span>
            <a href="booking.jsp?movie=The%20Adventure%20Begins" class="booking-button">Book Now</a>
        </div>
        <div class="movie-item">
            <span class="movie-title">Movie 2: Into the Unknown</span>
            <a href="booking.jsp?movie=Into%20the%20Unknown" class="booking-button">Book Now</a>
        </div>
        <div class="movie-item">
            <span class="movie-title">Movie 3: Return of the Hero</span>
            <a href="booking.jsp?movie=Return%20of%20the%20Hero" class="booking-button">Book Now</a>
        </div>
        <div class="movie-item">
            <span class="movie-title">Movie 4: The Final Chapter</span>
            <a href="booking.jsp?movie=The%20Final%20Chapter" class="booking-button">Book Now</a>
        </div>
    </div>
</body>
</html>
