<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<head>
	<%@include file="./base.jsp" %>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display|Roboto:300&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg==" crossorigin="anonymous" referrerpolicy="no-referrer" />

	

</head>
<body>
        <header>
        <div class="logo">
            <a href="#">
                <span>Music Mehdicine</span>
            </a>
        </div>

        <nav>                
            <div class="navbutton">
                <a href="#">About</a>
            </div>

            <div class="navbutton">
                <a href="#">Feelings</a>
                <div class="newbox">
                    <div class="dropdown">
                        <div class="navbutton"><a href="#">Stub Your Toe</a></div>
                        <div class="navbutton"><a href="#">Heartbreak</a></div>
                        <div class="navbutton"><a href="#">Shower Jams</a></div>
                    </div>
                </div>
            </div>

            <div class="navbutton">
                <a href="#">Customer Portal</a>
                <div class="newbox">
                    <div class="dropdown">
                        <div class="navbutton"><a href="#">Logout</a></div>
                    </div>
                </div>
            </div>

            <div class="navbutton">
                <a href="#">Admin</a>
                <div class="newbox">
                    <div class="dropdown">
                        <div class="navbutton"><a href="#">CRUD</a></div>
                        <div class="navbutton"><a href="#">Rest API</a></div>
                    </div>
                </div>
            </div>
        </nav>
        </header>
        <div class="form-container">
        <div class="login-heading">
            <h1>Log-in</h1>
        </div>
        <form class="login" action="login" method="post">
            <div class="form-group">
                <input type="text" placeholder="Email" name="email" id="email" class="form-control">
            </div>
            <div class="form-group">
                <input type="password" name="password" placeholder="Password" id="password" class="form-control">
            </div>
            <div class="form-group">
                <button class="mybutton" id="btn">Sign In</button>
            </div>
        </form>
        <div class="alt-options"><a href="register">Create Account</a></div>
        <div class="alt-options"><a href="#">Forgot Username</a></div>               
        <div class="alt-options"><a href="#">Forgot Password</a></div>
        <div class="separater">
            Or login in via social links
        </div>
        <div class="social-login">
            <a href="facebook">
                <i class="fab fa-facebook-square"></i>
            </a>
            <a href="Google">
                <i class="fab fa-google"></i>
            </a>
        </div>
    </div>
        <footer id="footer">
            <div class="container-fluid">
              <i class="social-icon fab fa-facebook-f"></i>
              <i class="social-icon fab fa-twitter"></i>
              <i class="social-icon fab fa-instagram"></i>
              <i class="social-icon fas fa-envelope"></i>
              <p>© Copyright 2023 Music Mehdicine</p>
            </div>
    </footer>
</body>
</html>