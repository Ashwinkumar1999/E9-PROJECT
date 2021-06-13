<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Fluffy Character Based Information Trustworthiness</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller-700.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
</head>
    <%
            if (request.getParameter("failed") != null) {
        %>
        <script>alert('Please Enter Correct username and Password');</script>
        <%            }
        %>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="searchform">
      </div>
      <div class="logo">
        <h1><a ><small>Fluffy Character Based Information Trustworthiness 
                    Reviewing For Dependable Cloud Capacity Frameworks</small></a></h1>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li ><a href="index.jsp"><span>Home Page</span></a></li>
          <li><a href="User.jsp"><span>User</span></a></li>
          <li class="active"><a href="KGC.jsp"><span>KGC</span></a></li>
          <li><a href="TPA.jsp"><span>TPA</span></a></li>
          <li ><a href="Cloud.jsp"><span>Cloud Server</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="article" align="center">
          <br>
          <br>
          <br>
          <br>
          <h2 style="color: white"><span>KGC Login</span></h2>
          <div class="clr"></div>
          <form action="KGC" method="post" id="sendemail">
            <ol>
              <li>
                <label for="name">Name (required)</label>
                <input id="name" name="kgcid" class="text" style="width:150px" />
              </li>
              <li>
                <label for="website">Password</label>
                <input id="website" type="password" name="password" class="text" style="width:150px" />
              </li>
              <li>
                  <input style="color: #79acfa" type="image" name="imageField" id="imageField" src="images/submit.gif" class="send" />
                <div class="clr"></div>
              </li>
            </ol>
          </form>
        </div>
      </div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
</body>
</html>

