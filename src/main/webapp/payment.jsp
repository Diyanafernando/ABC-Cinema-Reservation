<!DOCTYPE html>
<html lang="en">
<head>
    <title> Cinx payment gateway</title>
    <link rel="stylesheet" href="css/payment.css">
</head>
<body>
    <body style="background-image:url(.//images/background.jpg)"></body>

    <div class="container">
     
        <form action="">
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
                            <input type="text" placeholder="srilanka">
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
                        <img src=".//images/p.jpg"  alt="">
                        <img src=".//images/m.png"  alt="">
                        <img src=".//images/v.jpg"  alt="">
                    </div>
                    <div class="input-box">
                        <span>Name On Card :</span>
                        <input type="text" placeholder="Mr.Sudarshana Dulara">
                    </div>
                    <div class="input-box">
                        <span>Credit Card Number :</span>
                        <input type="number" placeholder="1111 2222 3333 4444">
                    </div>
                    <div class="input-box">
                        <span>Exp. Month :</span>
                        <input type="text" placeholder="August">
                    </div>
                
                    <div class="flex">
                        <div class="input-box">
                            <span>Exp. Year :</span>
                            <input type="number" placeholder="2025">
                        </div>
                        <div class="input-box">
                            <span>CVV :</span>
                            <input type="number" placeholder="123">
                        </div>
                    </div>
                </div>
            </div>

            <button type="submit" class="btn">Submit</button>
        </form>
    </div>

</body>

</html>