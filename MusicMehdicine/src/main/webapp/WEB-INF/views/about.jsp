<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
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
            <a href="${pageContext.request.contextPath }/home">
                <span>Music Mehdicine</span>
            </a>
        </div>

        <nav>                
            <div class="navbutton">
                <a href="${pageContext.request.contextPath }/about">About</a>
            </div>

            <div class="navbutton">
                <a href="#">Feelings</a>
                <div class="newbox">
                    <div class="dropdown">
                        <div class="navbutton"><a href="${pageContext.request.contextPath }/stub_your_toe">Stub Your Toe</a></div>
                        <div class="navbutton"><a href="${pageContext.request.contextPath }/heartbreak">Heartbreak</a></div>
                        <div class="navbutton"><a href="${pageContext.request.contextPath }/shower_jams">Shower Jams</a></div>
                    </div>
                </div>
            </div>

            <div class="navbutton">
                <a href="#">Customer Portal</a>
                <div class="newbox">
                    <div class="dropdown">
                        <div class="navbutton"><a href="${pageContext.request.contextPath }/logout">Logout</a></div>
                    </div>
                </div>
            </div>

            <div class="navbutton">
                <a href="#">Admin</a>
                <div class="newbox">
                    <div class="dropdown">
                        <div class="navbutton"><a href="${pageContext.request.contextPath }/admin_crud">CRUD</a></div>
                        <div class="navbutton"><a href="#">Rest API</a></div>
                    </div>
                </div>
            </div>
        </nav>
        </header>
        <div class="container" id="about-container">
        <div>
            <h1>About</h1>
            <p>With music being more accessable today than ever before, it's easy to miss out on potential gems. Music Mehdicine is your place to find songs that you've overlooked. Users have the ability to add their favorite new songs to emotion specific playlists which are updated constantly. Feel free to add your own songs or browse what other people are listening to.</p>
        </div>
        <div class="dance-ani">
            <ul class="dance-animation">
              <li class="dance-frame dance-animation--dancer1"></li>
              <li class="dance-frame dance-animation--dancer2"></li>
              <li class="dance-frame dance-animation--dancer3"></li>
              <li class="dance-frame dance-animation--dancer4"></li>
              <li class="dance-frame dance-animation--dancer5"></li>
              <li class="dance-frame dance-animation--dancer6"></li>
              <li class="dance-frame dance-animation--dancer7"></li>
              <li class="dance-frame dance-animation--dancer8"></li>
              <li class="dance-frame dance-animation--dancer9"></li>
              <li class="dance-frame dance-animation--dancer10"></li>
              <li class="dance-frame dance-animation--dancer11"></li>
            </ul>
            <iframe width="0" height="0" src="https://www.1youtuberepeater.com/watch?v=kWvbJsB0OBc&name=Tom+Jones+Its+Not+Unusual+With+Lyrics" frameborder="0" allowfullscreen></iframe>
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
    </div>
</body>
</html>