<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Cinx Payment Gateway</title>
    <link rel="stylesheet" href="css/payment.css">
</head>
<body style="background-image:url(images/background.jpg)">

<div class="container">
    <form action="generateOTP.jsp" method="POST">
        <div class="row">
            <div class="column">
                <h3 class="title">Billing Address</h3>
                <div class="input-box">
                    <span>Full Name :</span>
                    <input type="text" name="fullName" placeholder="ex: Sudarshana Dulara" required>
                </div>
                <div class="input-box">
                    <span>Email :</span>
                    <input type="email" name="email" placeholder="example@example.com" required>
                </div>
                <div class="input-box">
                    <span>Address :</span>
                    <input type="text" name="address" placeholder="Room - Street - Locality" required>
                </div>
                <div class="input-box">
                    <span>City :</span>
                    <input type="text" name="city" placeholder="Berlin" required>
                </div>

                <div class="flex">
                    <div class="input-box">
                        <span>State :</span>
                        <input type="text" name="state" placeholder="Sri Lanka" required>
                    </div>
                    <div class="input-box">
                        <span>Zip Code :</span>
                        <input type="number" name="zipCode" placeholder="123 456" required>
                    </div>
                </div>
            </div>

            <div class="column">
                <h3 class="title">Payment</h3>
                <div class="input-box">
                    <span>Cards Accepted :</span>
                    <img src="images/p.jpg" alt="Card 1">
                    <img src="images/m.png" alt="Card 2">
                    <img src="images/v.jpg" alt="Card 3">
                </div>
                <div class="input-box">
                    <span>Name On Card :</span>
                    <input type="text" name="cardName" placeholder="Mr. Sudarshana Dulara" required>
                </div>
                <div class="input-box">
                    <span>Credit Card Number :</span>
                    <input type="number" name="cardNumber" placeholder="1111 2222 3333 4444" required>
                </div>
                <div class="input-box">
                    <span>Exp. Month :</span>
                    <input type="text" name="expMonth" placeholder="August" required>
                </div>

                <div class="flex">
                    <div class="input-box">
                        <span>Exp. Year :</span>
                        <input type="number" name="expYear" placeholder="2025" required>
                    </div>
                    <div class="input-box">
                        <span>CVV :</span>
                        <input type="number" name="cvv" placeholder="123" required>
                    </div>
                </div>
            </div>
        </div>

        <button type="submit" class="btn">Submit</button>
    </form>
</div>

</body>
</html>
