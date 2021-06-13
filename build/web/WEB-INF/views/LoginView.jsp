<%@include file="../../view/partials/header.jsp" %>
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