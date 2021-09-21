<%-- Document : index Created on : 8 Jun, 2021, 8:11:57 PM Author : saquib --%>

    <%@page contentType="text/html" pageEncoding="UTF-8" %>

        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <title>e-Pocket</title>
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
            <link rel="stylesheet" href="public/stylesheet/landing.css">
            <link href="public/stylesheet/main.css" rel="stylesheet" type="text/css" />
            <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" type="text/javascript"
                async></script>
        </head>

        <body>

            <% session.setAttribute("currentUser", "0" ); %>
                <nav class="navbar navbar-default">
                    <div class="container">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                                data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>

                            <a style="color: black" class="navbar-brand" href="/ep/">e-Pocket</a>
                        </div>
                        <div id="navbar" class="collapse navbar-collapse">
                            <ul class="nav navbar-nav">
                                <li><a style="color: black" href="/ep/">Home</a></li>
                                <li><a href="fc/AboutUs">About Us</a></li>
                                <li><a href="fc/ContactUs">Contact Us</a></li>
                            </ul>
                            <ul class="nav navbar-nav navbar-right">
                                <li><a style="color: black" href="fc/LoginPage">Login</a></li>
                                <li><a style="color: black" href="fc/RegisterPage">Sign Up</a></li>
                            </ul>
                        </div>
                    </div>
                </nav>
                <div class="container">
                    <img src="image/1.png" alt=""/>
                </div>
        <footer class="footer">
          <div class="container">
            <p class="text-muted">&copy; e-Pocket 2021 | <a href="/ep/">Home</a> | <a href="RegisterPage">New User</a></p>
          </div>
        </footer>
        <script
          src="https://code.jquery.com/jquery-3.1.1.min.js"
          crossorigin="anonymous"></script>
        <!-- Custom JS for search feature -->
        <script src="/scripts/search.js" async defer></script>
        <!-- Bootstrap JS CDN -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" crossorigin="anonymous"></script>
        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script> 
        </body>
</html>