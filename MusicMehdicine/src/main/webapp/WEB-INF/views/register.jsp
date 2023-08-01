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
            <h1>Create Account</h1>
        </div>
        <form class="login" name="login" action="register-user" method="post">
            <div class="form-group">
                <label for="firstName"></label><input type="text" placeholder="First Name" id="firstname" name="firstName" class="form-control">
            </div>
            <div class="form-group">
                <label for="lastName"></label><input type="text" placeholder="Last Name" id="lastname" name="lastName" class="form-control">
            </div>
            <div class="form-group">
                <label for="email"></label><input type="text" placeholder="Email" id="email" name="email" class="form-control">
            </div>
            <div class="form-group">
                <label for="password"></label><input type="password" placeholder="Password" id="password" name="password" class="form-control">
            </div>
            <div class="form-group">
                <input type="submit" class="mybutton" id="btn" value="Join!">
            </div>
        </form>
        <div class="alt-options"><a href="login">Already have an account? Login</a></div>  
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
<script src="passwordChk.js"></script>
</body>
</html>