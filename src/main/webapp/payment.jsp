<!DOCTYPE html>
<html lang="en">
<head>
    <title> Cinx Payment Gateway</title>
    <link rel="stylesheet" href="css/payment.css">
    <script src="https://www.paypal.com/sdk/js?client-id=YOUR_PAYPAL_CLIENT_ID&currency=USD"></script> <!-- Replace YOUR_PAYPAL_CLIENT_ID -->
    <script>
        function initializePayPal() {
            paypal.Buttons({
                createOrder: function (data, actions) {
                    return actions.order.create({
                        purchase_units: [{
                            amount: {
                                value: '50.00' // Example total amount; dynamically update as needed
                            }
                        }]
                    });
                },
                onApprove: function (data, actions) {
                    return actions.order.capture().then(function (details) {
                        alert('Transaction completed by ' + details.payer.name.given_name);
                        // Redirect to a success page or store the transaction details in the database
                        window.location.href = "success.jsp"; // Replace with your success page URL
                    });
                },
                onError: function (err) {
                    alert('An error occurred during the transaction.');
                    console.error(err);
                }
            }).render('#paypal-button-container');
        }

        document.addEventListener("DOMContentLoaded", initializePayPal);
    </script>
</head>
<body style="background-image:url(./images/background.jpg)">
    <div class="container">
        <form>
            <div class="row">
                <div class="column">
                    <h3 class="title">Billing Address</h3>
                    <div class="input-box">
                        <span>Full Name :</span>
                        <input type="text" placeholder="ex:Sudarshana Dulara">
                    </div>
                    <div class="input-box">
                        <span>Email :</span>
                        <input type="email" placeholder="example@example.com">
                    </div>
                    <div class="input-box">
                        <span>Address :</span>
                        <input type="text" placeholder="Room - Street - Locality">
                    </div>
                    <div class="input-box">
                        <span>City :</span>
                        <input type="text" placeholder="Berlin">
                    </div>
                    <div class="flex">
                        <div class="input-box">
                            <span>State :</span>
                            <input type="text" placeholder="Sri Lanka">
                        </div>
                        <div class="input-box">
                            <span>Zip Code :</span>
                            <input type="number" placeholder="123 456">
                        </div>
                    </div>
                </div>
                <div class="column">
                    <h3 class="title">Payment</h3>
                    <div class="input-box">
                        <span>Cards Accepted :</span>
                        <img src="./images/p.jpg" alt="">
                        <img src="./images/m.png" alt="">
                        <img src="./images/v.jpg" alt="">
                    </div>
                </div>
            </div>
            <!-- PayPal Button Container -->
            <div id="paypal-button-container" class="mt-5">Pay</div>
        </form>
    </div>
</body>
</html>
