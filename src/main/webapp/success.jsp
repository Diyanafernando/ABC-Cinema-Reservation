<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <title>Success</title>
    <style>
        body {
            background-color: #f8f9fa;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            font-family: 'Arial', sans-serif;
        }
        .container {
            text-align: center;
            background-color: #ffffff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 10px 20px rgba(0,0,0,0.1);
            max-width: 400px;
        }
        .container h1 {
            font-size: 2.5rem;
            color: #28a745;
            margin-bottom: 20px;
            font-weight: bold;
        }
        .container p {
            font-size: 1.2rem;
            color: #6c757d;
            margin-bottom: 20px;
        }
        .btn-custom {
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            font-size: 1rem;
            border: none;
            border-radius: 5px;
            transition: all 0.3s;
        }
        .btn-custom:hover {
            background-color: #0056b3;
            color: #fff;
        }
        .success-icon {
            font-size: 3rem;
            color: #28a745;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>

<div class="container">
    <i class="fas fa-check-circle success-icon"></i>
    <h1>Success!</h1>
    <p>Your action was completed successfully.</p>
    <a href="index.jsp" class="btn btn-custom">Back to Home</a>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="js/bootstrap.bundle.min.js"></script>
</body>
</html>
