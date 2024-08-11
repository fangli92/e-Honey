<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Honey Website Design</title>
  <link rel="stylesheet" type="text/css" href="style.css">

  <!--box icons-->
  <link rel="stylesheet"
        href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css">

  <!--google fonts-->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@500&display=swap" rel="stylesheet">
</head>
<body>
<header>
  <a href="#" class="logo"><i class='bx bxs-home'></i>Honey</a>

  <ul class="navlist">
    <li><a href="#home" class="active">Home</a></li>
    <li><a href="#about">About Us</a></li>
    <li><a href="#shop">Our Shop</a></li>
    <li><a href="#review">Our Customer</a></li>
    <li><a href="#contact">Contact Us</a></li>
  </ul>

  <div class="nav-icons">
    <i class='bx bx-search'></i>
    <i class='bx bx-cart cart-icon'></i>
    <div class='bx bx-menu' id="menu-icon"></div>
  </div>
</header>

<!---Home-->
<section class="home" id="home">
  <div class="home-text">
    <h1>Meet, <span>Eat &</span> <br> Enjor The true <br> taste</h1>
    <a href="#" class="btn">Explore Menu<i class="bx bxs-right-arrow" ></i></a>
    <a href="#" class="btn2">Order Now</a>
  </div>

  <div class="home-img">
    <img src="../resource/img/hero.png">
  </div>
</section>

<!--about us-->
<section class="about" id="about">
  <div class="about-img">
    <img src="../../img/about.png">
  </div>

  <div class="about-text">
    <h2>Living well begins <br> with eating well.</h2>
    <p>Over its history as a food, the main uses of honey are in cooking, baking, desserts, as a spread on bread, as an addition
      to various beverages such as tea, and a sweetner in some commercial beverages and making their favorite food
    </p>
    <a href="#" class="btn">Explore Story<i class="bx bxs-right-arrow" ></i></a>
  </div>
</section>

<!--our shop-->
<section class="shop" id="shop">
  <div class="middle-text">
    <h4>Our Shop</h4>
    <h2>Lets Check Popular Products</h2>
  </div>
  <div class="shop-content">

  </div>
  <div class="row-btn">
    <a href="#" class="btn"> All Products<i class="bx bxs-right-arrow"></i></a>
  </div>

</section>
<!-- Message element -->
<div id="addedToCartMessage" class="message"></div>

<!--shopping cart-->
<div class="cart-overlay"></div>

<form action="" method="post" id="">

  <div class="cart">
    <div class="cart-header">
      <i class="bx bx-right-arrow-alt cart-close"></i>
      <h2>Your Cart</h2>
    </div>
    <div class="cart-body">

    </div>
    <div class="cart-footer">
      <div>
        <strong>Total</strong>
        <span class="cart-total"></span>
      </div>
      <button class="cart-clear">Clear Cart</button>
      <button class="checkout"><a href="register.jsp">Checkout</a></button>

    </div>

  </div>

</form>
<!--Reviews-->
<section class="review" id="review">
  <div class="middle-text">
    <h4>Our Customer</h4>
    <h2>Clients Review About Our Food</h2>
  </div>

  <div class="review-content">
    <div class="box">
      <p>The Honey is in great quality and I used it as a ingredents in food. I would definatly re-purchase again.</p>
      <div class="in-box">
        <div class="bx-img">
          <img src="../img/r1.jpg">
        </div>
        <div class="bxx-text">
          <h4>John Karahan</h4>
          <h5>Food Vlogger</h5>
          <div class="ratings">
            <a href="#"><i class="bx bxs-star"></i></a>
            <a href="#"><i class="bx bxs-star"></i></a>
            <a href="#"><i class="bx bxs-star"></i></a>
            <a href="#"><i class="bx bxs-star"></i></a>
            <a href="#"><i class="bx bxs-star"></i></a>
          </div>
        </div>
      </div>
    </div>

    <div class="box">
      <p>The Honey is in great quality and I used it as a ingredents in food. I would definatly re-purchase again.</p>
      <div class="in-box">
        <div class="bx-img">
          <img src="../img/r2.jpg">
        </div>
        <div class="bxx-text">
          <h4>John Karahan</h4>
          <h5>Food Vlogger</h5>
          <div class="ratings">
            <a href="#"><i class="bx bxs-star"></i></a>
            <a href="#"><i class="bx bxs-star"></i></a>
            <a href="#"><i class="bx bxs-star"></i></a>
            <a href="#"><i class="bx bxs-star"></i></a>
            <a href="#"><i class="bx bxs-star"></i></a>
          </div>
        </div>
      </div>
    </div>

    <div class="box">
      <p>The Honey is in great quality and I used it as a ingredents in food. I would definatly re-purchase again.</p>
      <div class="in-box">
        <div class="bx-img">
          <img src="../img/r3.jpg">
        </div>
        <div class="bxx-text">
          <h4>John Karahan</h4>
          <h5>Food Vlogger</h5>
          <div class="ratings">
            <a href="#"><i class="bx bxs-star"></i></a>
            <a href="#"><i class="bx bxs-star"></i></a>
            <a href="#"><i class="bx bxs-star"></i></a>
            <a href="#"><i class="bx bxs-star"></i></a>
            <a href="#"><i class="bx bxs-star"></i></a>
          </div>
        </div>
      </div>
    </div>

  </div>
</section>

<!--link to js-->
<script src="script.js"></script>

<!--contact us-->
<section class="contact" id="contact">
  <div class="middle-text">
    <h4>Contact Us</h4>
    <h2>We would love to hear from you</h2>
  </div>


  <div class="container">
    <div class="container-box">
      <img src="../img/c1.png">
      <h3>11:00 am - 8:00 pm</h3>
      <a href="#">Working Hours</a>
    </div>

    <div class="container-box">
      <img src="../img/c2.png">
      <h3>Honey Springs 555</h3>
      <a href="#">Get Directions</a>
    </div>

    <div class="container-box">
      <img src="../img/c3.png">
      <h3>(555) 123-4567</h3>
      <a href="#">Call Us Now</a>
    </div>
  </div>

  <div class="social">
    <a href="#"><i class="bx bxl-instagram-alt"></i></a>
    <a href="#"><i class="bx bxl-facebook"></i></a>
    <a href="#"><i class="bx bxl-twitter"></i></a>
    <a href="#"><i class="bx bxl-github"></i></a>
    <a href="#"><i class="bx bxl-google"></i></a>
  </div>
</section>



</body>
</html>