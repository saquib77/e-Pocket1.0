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
                        <a class="navbar-brand" href="#">Dashboard</a>
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
                                     
                                    session.setAttribute("currentUser", name);
                                %>
                                <a href="#">
                                    Logged In as <strong> <%= name %> </strong>
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
<div class="row">
        <h1 style="text-align: center">Upload File</h1>
        <div style="width: 20%; height: 100px; margin: 25px auto;">
            <form action="Upload" enctype='multipart/form-data' method="post">
                <%
                    session.setAttribute("currentUser", name);
                    
                 %>
                <div class="form-group">
                    <label>Select Document</label><br>
                    <input class="form-control" type="file" name="file" required="required">
                </div>
                <div class="form-group">
                    <select name="ext" class="form-control" required="required">
                        <option value="">Select Extension</option>
                        <option value="pdf">.pdf</option>
                        <option value="docx">.docx</option>
                        <option value="txt">.txt</option>
                        <option value="img">.img</option>
                        <option value="png">.png</option>
                        <option value="jpg">.jpg</option>
                        <option value="jpeg">.jpeg</option>
                        <option value="zip">.zip</option>
                        <option value="mp3">.mp3</option>
                        <option value="wav">.wav</option>
                        <option value="mp4">.mp4</option>
                    </select>
                </div>
                <div class="form-group">
                    <button type="submit" value="upload" class="btn btn-lg btn-primary btn-block">Upload</button>
                </div>
            </form>
        </div>
    </div>
<%@include file="../../Panels/bottomPanel.jsp" %>