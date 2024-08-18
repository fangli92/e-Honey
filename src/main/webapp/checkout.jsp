<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="checkout.css">
    <title>Payment</title>
</head>
<body>


<div class="container">
    <h6>Checkout</h6>
    <span>x</span>
    <h1>Payment Method</h1>
    <form action="">
        <label for="payment type">Payment Type
            <select name="payment type" id="payment type">
                <option value="Visa">Visa</option>
                <option value="MasterCard">MasterCard</option>
            </select>
        </label>
        <label for="cardno">Card Number
            <input type="text" name="cardno" id="cardno" maxlength="16" pattern="[0-9]{16}" required>
        </label>
        <div class="float">
            <label for="validtill">Expiration Date
                <input type="text" name="validtill" id="validtill" maxlength="5" pattern="(0[1-9]|1[0-2])\/[0-9]{2}" placeholder="MM/YY" required>
            </label>
            <label for="cvv">CVV
                <input type="text" name="cvv" id="cvv" maxlength="3" pattern="[0-9]{3,4}" required>
            </label>
        </div>
        <div class="return">
            <div class="row">
                <div>Total Price</div>
                <div class="totalPrice">$900</div>
            </div>
        </div>

        <button>Place Order</button>

    </form>
</div>

<script src="checkout.js"></script>

</body>
</html>

<!----
<h1>Restaurant Checkout</h1>

<form id="checkoutForm" action="submit_order.php" method="post">
<div>
<label for="fullName">Full Name:</label>
<input type="text" id="fullName" name="fullName" required>
</div>
<div>
<label for="email">Email:</label>
<input type="email" id="email" name="email" required>
</div>
<div>
<label for="phone">Phone Number:</label>
<input type="tel" id="phone" name="phone" pattern="[0-9]{10}" required>
</div>
<div>
<label for="address">Delivery Address:</label>
<textarea id="address" name="address" pattern="[A-Za-z0-9\s\-\,\#]+" required></textarea>
</div>
<div>
<label for="cardNumber">Credit Card Number:</label>
<input type="text" id="cardNumber" name="cardNumber" pattern="[0-9]{16}" required>
</div>
<div>
<label for="expDate">Expiration Date:</label>
<input type="text" id="expDate" name="expDate" pattern="(0[1-9]|1[0-2])\/[0-9]{2}" placeholder="MM/YY" required>
</div>
<div>
<label for="cvv">CVV:</label>
<input type="text" id="cvv" name="cvv" pattern="[0-9]{3,4}" required>
</div>
<div>
<input type="submit" value="Place Order">
</div>
</form>

</body>
</html>
-->

