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
<script type="text/javascript" src="js/script_1.js"></script>
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
        <h1><a ><small>Fluffy Character Based Information Trustworthiness 
                    Reviewing For Dependable Cloud Capacity Frameworks</small></a></h1>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li><a href="File_Upload.jsp"><span>File Upload</span></a></li>
          <li><a href="MyFiles.jsp"><span>My Files</span></a></li>
          <li><a href="audit_request.jsp"><span>Audit Request</span></a></li>
          <li><a href="user_check.jsp"><span>Proof Check</span></a></li>
          <li><a href="index.jsp"><span>Logout</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
    <table id="customers">
                            <tr>
                                <th>User Name</th>
                                <th>File Id</th>
                                <th>File Name</th>
                                <th>Uploaded Time</th>
                                <th>Hash Code</th>

                            </tr>

                            <%
                                String uid = (String)session.getAttribute("uid");
                                Connection con = SQLconnection.getconnection();
                                Statement st = con.createStatement();
                                try {
                                    ResultSet rs = st.executeQuery("Select * from fileupload where uid  ='" + uid + "' ");
                                    while (rs.next()) {
                            %>
                            <tr>
                            <td ><%=rs.getString("user")%></td>
                            <td ><%=rs.getString("filekey")%></td>
                            <td><%=rs.getString("fname")%></td>
                            <td><%=rs.getString("time")%></td>
                            <td><%=rs.getString("hashcode")%></td>
                            
                            </tr>
                            <%                                        }
                                } catch (Exception ex) {
                                    ex.printStackTrace();
                                }

                            %>
                        </table>
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

