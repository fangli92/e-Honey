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
<%@ page import="org.example.finalproject.business.User" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%
    User u = (User) session.getAttribute("user");
    if (u != null){
        request.setAttribute("firstName", u.getFirstName());
    }
%>
<%--<h3>Welcome ${firstName}</h3>--%>
<div class="containerCart">
    <div class="checkoutLayout">
        <div class="returnCart">
            <form action="CheckoutController" method="post">
            <h1>Welcome ${firstName}</h1>
            <h2>Cart Summary</h2>
            <div class="list">

                <div class="item">
                    <img src="">
                    <div class="info">
                        <div class="name">PRODUCT 1</div>
                        <div class="price">$22/1 product</div>
                    </div>
                    <div class="quantity">5</div>
                    <div class="returnPrice">$433.3</div>
                </div>
            </div>

                <input type="hidden" name="action" value="checkout">
                <button type="submit">Proceed to Checkout</button>
                <button type="submit">Edit Cart</button>
            </form>
        </div>
    </div>
</div>

<script src="checkout.js"></script>

</body>
<%--<div class="checkoutBtn">--%>
<%--<form action="CheckoutController" method="post">--%>
<%--    <input type="hidden" name="action" value="checkout">--%>
<%--    <button class="btn">Proceed to Checkout</button>--%>
<%--</form>--%>
<%--</div>--%>
</html>


