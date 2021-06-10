<%@include file="../../view/partials/header.jsp" %>
<div class="row">
        <h1 style="text-align: center">Verify Your e-Mail</h1>
        <div style="width: 30%; margin: 25px auto;">
            <form action="Verify" method="post">
                <div class="form-group">
                    <input class="form-control" type="email" name="email" placeholder="Enter Your Email">
                </div>
                <div class="form-group">
                    <input class="form-control" type="text" name="otp" placeholder="Enter OTP Here">
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-lg btn-primary btn-block">Verify</button>
                </div>
            </form>
            <a href="/ep/">Go Back</a>
        </div>
    </div>
<%@include file="../../view/partials/footer.jsp" %>
