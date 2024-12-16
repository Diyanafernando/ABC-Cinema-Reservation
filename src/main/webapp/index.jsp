<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Amazing Movie Experience</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="index.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>
    </style>
</head>
<body>
<header>
    <div class="nav_bar">
        <div class="nav_bar container d-flex justify-content-between align-items-center">
            <div class="logo">
                <a href="index.jsp">ABC Cinema</a>
            </div>
            <nav>
                <ul class="nav-item">
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="#">Movies</a></li>
                    <li><a href="feedback.jsp">Feedback</a></li>
                    <li><a href="#">Contact Us</a></li>
                </ul>
            </nav>
            <div class="login-buttons">
                <a href="login.html">Login</a>
                <a href="signup.html">Signup</a>
            </div>
        </div>
    </div>
</header>

<div class="banner">
    <div class="banner-content">
        <h1 style="color: white !important;">Amazing Movie Experience</h1>
        <p>Come and enjoy our best movie experience with the best sound system.</p>
        <a href="#movies" class="btn">Explore</a>
    </div>
    <div class="circle-img">
        <img src="images/transformers.jpg" alt="Transformers">
    </div>
</div>

<!-- Add the rest of the HTML content as it is -->

<!-- footer -->
<footr>
    <div class="footer">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h2>Newsletter</h2>
                </div>
                <div class="col-md-10 offset-md-1">
                    <form class="news">
                        <input class="newslatter" placeholder="Enter Your Email" type="text" name="Enter Your Email">
                        <button class="submit">Subscribe</button>
                    </form>
                </div>
            </div>
        </div>
        <div class="copyright">
            <div class="container">
                <p>@Se2 copyright</p>
            </div>
        </div>
    </div>
</footr>
<!-- end footer -->

<!-- Javascript files-->
<script src="js/jquery.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.bundle.min.js"></script>
<script src="js/jquery-3.0.0.min.js"></script>
<script src="js/plugin.js"></script>
<!-- sidebar -->
<script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="js/custom.js"></script>
<script src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
</body>
</html>
