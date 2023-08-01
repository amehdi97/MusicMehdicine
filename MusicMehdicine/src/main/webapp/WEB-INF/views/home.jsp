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
    
    <div class="container">
        <div class="title">
            <div id="side1">
              <h1>Heal Yourself with Music</h1>
                <p>A place to find all the music you've been missing out on.</p>
                <p>Updated by you!</p>
                <a href="register.html" class="mybutton">Join Now!</a>
            </div>
            <div id="side2">
                <img class="music-img" src="https://i.kym-cdn.com/entries/icons/original/000/021/545/binky.png" alt="person listenting to music">
            </div>
        </div>

        <div class="top-tracks">
            <h1>Current Top Tracks</h1> 
            <div class="cards">
                <div class="card1">
                    <a href="stub_your_toe">
                        <i class='fa-solid fa-face-angry'></i>
                        <h2>Stub Your Toe</h2>
                        <p>Vent - Baby Keem</p>
                    </a>
                </div>
                <div class="card2">
                    <a href="#">
                        <i class='fas fa-heart-broken' style='font-size:100px'></i>
                        <h2>Heartbreak</h2>
                        <p>Evergreen - Omar Apollo</p>
                    </a>
                </div>
                <div class="card3">
                    <a href="#">
                        <i class="fas fa-shower"></i>
                        <h2>Shower Jams</h2>
                        <p>Livin' on a Prayer - Bon Jovi</p>
                    </a>
                </div>
            </div>
        </div>


        <div class="testimonials">
        
            <div class="tbox">
                <p>"I would like to personally thank you for the outstanding music I've been introduced to. You guys rock! It's all good. I can't say enough about Music Mehdicine."</p>
                <p>- Tammara I.</p>
            </div>
        
            <div class="tbox">
                <p>"Music Mehdicine is the most valuable musicresource we have EVER seen. I will let my mum know about this, she could really make use of Music Mehdicine! Music Mehdicine has completely surpassed our expectations."</p>
                <p>- Floris V.</p>
            </div>
        
        
            <div class="tbox">
                <p>"We can't understand how we've been living without Music Mehdicine."</p>
                <p>- Carlin B.</p>
            </div>


            <div class="tbox">
                <p>"Music Mehdicine impressed me on multiple levels. I would gladly pay over 600 dollars for Music Mehdicine, but its completely free! "</p>
                <p>- Eve V.</p>
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
    </div>
</body>