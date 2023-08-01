<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
	<%@include file="./base.jsp" %> 
	
	<!-- This is my own style sheet -->
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
    <div>
		<div>
			<div class="playlist-container">
				<h1>Stub Your Toe</h1>
				<p>Music so angry it can best be described as 
					the rage you feel after stubbing your pinky toe.</p>
				<div>
					<button class="mybutton" id="btn" onclick="window.location.href='stub-add-song';">Add Song</button>
				</div>
				<div class="playlist-table">
				<table>
				    <tr>
				      <th scope="col">Song</th>
				      <th scope="col">Artist</th>
				      <th scope="col">Link</th>
				    </tr>
				  <tbody>
				  <c:forEach items="${songs }" var="s">
				    <tr>
				      <td>${s.songName }</td>
				      <td>${s.artistName }</td>
				      <td><a href="${s.link	}" target="_blank">Listen Here</a></td>
				    </tr>
				  </c:forEach>
				  </tbody>
				</table>
				</div>
				
			</div>
		</div>
	
	</div>
        
    <footer id="footer">
            <div class="container-fluid">
              <i class="social-icon fab fa-facebook-f"></i>
              <i class="social-icon fab fa-twitter"></i>
              <i class="social-icon fab fa-instagram"></i>
              <i class="social-icon fas fa-envelope"></i>
              <p>� Copyright 2023 Music Mehdicine</p>
            </div>
        </footer>
</body>
</html>