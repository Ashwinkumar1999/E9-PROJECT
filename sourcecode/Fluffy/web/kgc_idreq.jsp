<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="FUZZY.SQLconnection"%>
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
    <style>
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
</style>
    <%
            if (request.getParameter("success") != null) {
        %>
        <script>alert('KGC login successful');</script>
        <%            }
        %>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="searchform">
      </div>
      <div class="logo">
        <h1><a><small>Fluffy Character Based Information Trustworthiness 
                    Reviewing For Dependable Cloud Capacity Frameworks</small></a></h1>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
            <li class="active"><a href="KGC_home.jsp"><span>KGC Home Page</span></a></li>
          <li><a href="keyreq.jsp"><span>Key Request</span></a></li>
          <li><a href="kgc_users.jsp"><span>Users</span></a></li>
          <li><a href="index.jsp"><span>Logout</span></a></li>
        </ul>
      </div>
      <table id="customers">
        <tr>
    <th>User ID</th>
    <th>User Name</th>
    <th>User Mail</th>
    <th>D.O.B</th>
    <th>Gender</th>
    <th>Phone</th>
    <th>City</th>
    <th>Country</th>
  </tr>
   <%
                                Connection con = SQLconnection.getconnection();
                                Statement st = con.createStatement();
                                try {
                                    ResultSet rs = st.executeQuery("Select * from user");
                                    while (rs.next()) {
                            %>
  <tr>
      <td><%=rs.getString("kgc")%></td>
     <td><%=rs.getString("name")%></td>
     <td><%=rs.getString("email")%></td>
     <td><%=rs.getString("dob")%></td>
     <td><%=rs.getString("gender")%></td>
     <td><%=rs.getString("phone")%></td>
     <td><%=rs.getString("city")%></td>
     <td><%=rs.getString("country")%></td>
  </tr>
   <%                                        }
                                } catch (Exception ex) {
                                    ex.printStackTrace();
                                }

                            %>
                        </table>
           </div>
                        <br>
                        <br>
                        <br>
                        <br>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <div class="clr"></div>
          <div class="clr"></div>
        </div>
      </div>
      <div class="sidebar">
      </div>
      <div class="clr"></div>
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

