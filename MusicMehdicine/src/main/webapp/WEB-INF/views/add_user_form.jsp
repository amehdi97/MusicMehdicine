<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
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
	<div>
		<div class="form-container">
			<div class="login-heading">
				<h1>Fill the user's details</h1>
			</div>
				<form class="form" action="handle-user" method="post">
					<div class="input-group">
						<label for="firstName"></label><input type="text" id="fname" 
							name="firstName" placeholder="Enter the user's first name here">
					</div>
					<div class="input-group">
						<label for="lastName"></label><input type="text" id="lname"
							name="lastName" placeholder="Enter the user's last name here">
					</div>
					<div class="input-group">
						<label for="email"></label><input type="text" id="email"
							name="email" placeholder="Enter the user's email here">
					</div>
					<div class="input-group">
						<label for="password"></label><input type="text" id="password"
							name="password" placeholder="Enter the user's password here">
					</div>
						<button id="btn" type="submit" class="mybutton">Add</button>
				</form>
			
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