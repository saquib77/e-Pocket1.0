<%@include file="../../Panels/leftPanel.jsp" %>
        <div class="main-panel">
            <nav class="navbar navbar-default navbar-fixed">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="">Dashboard</a>
                    </div>
                    <div class="collapse navbar-collapse">
                        <ul class="nav navbar-nav navbar-left">
                            <li>
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="fa fa-dashboard"></i>
                                </a>
                            </li>
                        </ul>
                        
                        <ul class="nav navbar-nav navbar-right">
                            <li>
                                <%
                                    name = (String)session.getAttribute("currentUser");
                                %>
                                <a href="">
                                    Logged In as <%= name %>
                                </a>
                            </li>
                            <li>
                                <% name=null; %>
                                <a href="LoginPage">Logout</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>


            <div class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="card">
                                <div class="header">
                                    <h4 class="title">Users Behavior</h4>

                                </div>
                                <div id="cal-heatmap"></div>
                                <script type="text/javascript">
                                    var cal = new CalHeatMap();
                                    cal.init({});
                                </script>

                            </div>
                        </div>
                    </div>

                </div>
            </div>


            <footer class="footer">
                <div class="container-fluid">
                    <nav class="pull-left">
                        <ul>
                            <li>
                                <a href="DashboardPage">
                                    Home
                                </a>
                            </li>

                        </ul>
                    </nav>
                    <p class="copyright pull-right">
                        &copy;
                        <script>document.write(new Date().getFullYear())</script> <a href="/ep">e-Pocket</a>
                    </p>
                </div>
            </footer>

        </div>
    </div>
    <%@include file="../../Panels/bottomPanel.jsp" %>