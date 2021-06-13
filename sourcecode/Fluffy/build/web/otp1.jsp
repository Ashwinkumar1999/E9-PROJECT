<%@page import="FUZZY.SQLconnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    String votp = request.getParameter("votp");
    String mail = (String)session.getAttribute("umail");
    String status = null;
    System.out.println("Check otp : " + votp);
    Connection con = SQLconnection.getconnection();
    Statement st = con.createStatement();
    try {
        ResultSet rs = st.executeQuery("SELECT * FROM user where otp='" + votp + "' AND email='" + mail + "'");
        if (rs.next()) {

            response.sendRedirect("User_home.jsp?Msg=login Sucessfull");
        } else {
            response.sendRedirect("otp.jsp?Msg=Wrong_OTP_entered");
        }

    } catch (Exception ex) {
        ex.printStackTrace();
    }
%>
