<%-- 
    Document   : index
    Created on : 8 Jun, 2021, 8:11:57 PM
    Author     : saquib
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>e-Pocket</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
		<link rel="stylesheet" href="public/stylesheet/landing.css">
		<script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" type="text/javascript" async></script>
	</head>
	<body>
                <% 
                    session.setAttribute("currentUser", "0");
                %>
		<div id="landing-header">
			<!--<h1>Welcome to e-Pocket!</h1>-->
			<a href="fc/LoginPage" class="btn btn-lg btn-default">Login</a>
                        <a href="fc/RegisterPage" class="btn btn-lg btn-default">Register</a>
		</div>

		<ul class="slideshow">
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
		</ul>
		
	</body>
</html>