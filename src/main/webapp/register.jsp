<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register Your Account</title>
    <link rel="stylesheet" href="Register.css">
</head>
<body>
<div class="container">
    <div class="register-box">
        <h2>Register Your Information</h2>
        <form action="confirmRegistration" method="POST">
            <div class="textbox">
                <label for="firstName">First Name</label>
                <input type="text" id="firstName" name="name" placeholder="Enter your First name..." maxlength="10" required>
            </div>
            <div class="textbox">
                <label for="lastName">Last Name</label>
                <input type="text" id="lastName" name="name" placeholder="Enter your Last name..." maxlength="10" required>
            </div>
            <!--      <div class="textbox">-->
            <!--        <label for="username">Username</label>-->
            <!--        <input type="text" id="username" name="username" placeholder="Enter a username..." required>-->
            <!--      </div>-->
            <div class="textbox">
                <label for="email">Email address</label>
                <input type="email" id="email" name="email" placeholder="Enter your email address..." pattern="[^ @]*@[^ @]*" required>
            </div>
            <!--      <div class="textbox">-->
            <!--        <label for="password">Password</label>-->
            <!--        <input type="password" id="password" name="password" placeholder="Enter your password..." required>-->
            <!--      </div>-->
            <!--      <div class="textbox">-->
            <!--        <label for="confirm_password">Confirm Password</label>-->
            <!--        <input type="password" id="confirm_password" name="confirm_password" placeholder="Enter your password again..." required>-->
            <!--      </div>-->
            <button type="submit" class="btn">Register</button>

        </form>
        <!--    <div class="login-link">-->
        <!--      <p>Already have an account? <a href="index.html">Sign in.</a></p>-->
    </div>
</div>
</div>
</body>
</html>

