<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>e-Pocket</title>
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
            <script src="//geodata.solutions/includes/countrystatecity.js"></script>
            <link href="../css/register.css" rel="stylesheet" type="text/css"/>
  </head>
  <body>
  <nav class="navbar navbar-fixed-top">
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
                    <li><a style="color: black" href="LoginPage">Login</a></li>
            </ul>
          </div>
      </div>
  </nav>
      <div class="container" id="form">

<div class="row" style="margin-top: 50px">
        <h1 style="text-align: center">Sign Up</h1>
        <div style="width: 30%; margin: 25px auto;">
            <form action="Register" method="post" >
                <div class="form-group">
                    <input class="form-control" type="text" name="fname" placeholder="First Name" required="required">
                </div>
                <div class="form-group">
                    <input class="form-control" type="text" name="lname" placeholder="Last Name" required="required">
                </div>
                <div class="form-group">
                    <input class="form-control" type="email" name="email" placeholder="Email" required="required">
                </div>
                <div class="form-group">
                    <input class="form-control" type="password" name="pass" placeholder="Password" required="required">
                </div>
                <div class="form-group">
                    <input class="form-control" type="tel" name="phnum" placeholder="xxx-xxx-xxxx" id="phone_number" pattern="^\d{3}-\d{3}-\d{4}$" required="required"/>
                </div>
                <div class="form-group">
                    <select name="country" class="countries form-control" id="countryId">
                        <option value="">Select Country</option>
                    </select>
                </div>
                <div class="form-group">
                    <select name="state" class="states form-control" id="stateId">
                        <option value="">Select State</option>
                    </select>
                </div>
                <div class="form-group">
                    <select name="city" class="cities form-control" id="cityId">
                        <option value="">Select City</option>
                    </select>
                </div>
                <div class="form-group">
                    <select name="que" class="form-control" required="required">
                        <option value="">Security Question's</option>
                        <option value="What is your Old School Name?">What is your Old School Name?</option>
                        <option value="What is your Born City Name?">What is your Born City Name?</option>
                        <option value="What is your Favourite Game?">What is your Favourite Game?</option>
                        <option value="What is your Old Mobile Number?">What is your Old Mobile Number?</option>
                    </select>
                </div>
                <div class="form-group">
                    <input class="form-control" type="text" name="ans" placeholder="Security Answer" required="required">
                </div>
                <div class="form-group">
                    <select name="gen" class="form-control" required="required">
                        <option value="">Gender</option>
                        <option value="Male">Male</option>
                        <option value="Female">Female</option>
                        <option value="Skip">Skip</option>
                    </select>
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-lg btn-primary btn-block">Sign Up!</button>
                </div>
            </form>
            
            <a href="/ep/">Go Back</a>
        </div>
    </div>
<%@include file="../../view/partials/footer.jsp" %>