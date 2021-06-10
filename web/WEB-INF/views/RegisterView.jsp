<%@include file="../../view/partials/header.jsp" %>
<div class="row">
        <h1 style="text-align: center">Sign Up</h1>
        <div style="width: 30%; margin: 25px auto;">
            <form action="Register" method="post">
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