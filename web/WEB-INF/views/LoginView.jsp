<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>e-Pocket</title>
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
            <link href="../../public/stylesheet/main.css" rel="stylesheet" type="text/css"/>
            <link href="../../public/stylesheet/landing.css" rel="stylesheet" type="text/css"/>
        
        
  </head>
  <body>
  <nav class="navbar navbar-default">
      <div class="container">
          <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>

              <a style="color: black" class="navbar-brand" href="/ep/">e-Pocket</a>
          </div>
          <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li><a href="/ep/">Home</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                    <li><a style="color: black" href="RegisterPage">Sign Up</a></li>
            </ul>
          </div>
      </div>
  </nav>
  <div class="container">

<div class="row">
        <h1 style="text-align: center">Login</h1>
        <div style="width: 30%; margin: 25px auto;">
            <form action="Login" method="post">
                <div class="form-group">
                    <input class="form-control" type="email" name="email" placeholder="Email">
                </div>
                <div class="form-group">
                    <input class="form-control" type="password" name="password" placeholder="Password">
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-lg btn-primary btn-block">Login</button>
                </div>
                
            </form>
            <a href="/ep/">Go Back | </a> 
            <a href="Verify">Verify Your Account</a> 
        </div>
    </div>
<%@include file="../../view/partials/footer.jsp" %>