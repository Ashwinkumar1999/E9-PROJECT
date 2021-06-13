<%@page import="FUZZY.Mail"%>
<%@page import="FUZZY.SQLconnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.security.SecureRandom"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    String mail = request.getParameter("email");
    String pass = request.getParameter("pass");
    String status = null;
    System.out.println("Check User name And Password : " + mail + pass);
    Connection con = SQLconnection.getconnection();
    Statement st = con.createStatement();
     Statement sto = con.createStatement();
    try {
        ResultSet rs = st.executeQuery("SELECT * FROM user where email='" + mail + "' AND password='" + pass + "' AND kgc !='waiting'");
        if (rs.next()) {
            session.setAttribute("uname", rs.getString("name"));
            session.setAttribute("umail", rs.getString("email"));
            session.setAttribute("uid", rs.getString("id"));
            
            Random RANDOM = new SecureRandom();
        int PASSWORD_LENGTH = 5;
        String letters = "0123456789";
        String otp = "";
        for (int i = 0; i < PASSWORD_LENGTH; i++) {
            int index = (int) (RANDOM.nextDouble() * letters.length());
            otp += letters.substring(index, index + 1);
        }
        String filekey = "I" + otp;
         int i = sto.executeUpdate("update user set otp ='"+filekey+"' where email='" +mail+"' " );
            String msggg = "Your 6 digit OTP : " +filekey ;
            Mail ma = new Mail();
            ma.secretMail(msggg, "Downloadkey", mail);
            String msg = "File Download Key:" + msggg;
            response.sendRedirect("otp.jsp?Msg=otp");
        } else {
            response.sendRedirect("User.jsp?Msg=Authentication_Failed");
        }

    } catch (Exception ex) {
        ex.printStackTrace();
    }
%>
