<%@include file="../../view/partials/header.jsp" %>
<div class="row">
        <h1 style="text-align: center">User Does'nt Exist | Incorrect Login Detail</h1>
        <div style="width: 30%; margin: 25px auto;">
            <form action="LoginPage" method="post">
                <div class="form-group">
                    <button class="btn btn-lg btn-primary btn-block">Login</button>
                </div>
            </form>
            <form action="Register" method="post">
                <div class="form-group">
                    <button class="btn btn-lg btn-primary btn-block">Sign Up</button>
                </div>
            </form>
            <a href="/ep/">Go Back | </a> 
            <a href="Verify">Verify Your Account</a> 
        </div>
    </div>
<%@include file="../../view/partials/footer.jsp" %>