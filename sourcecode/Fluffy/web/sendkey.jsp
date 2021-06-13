<%@page import="FUZZY.Mail"%>
<%@page import="FUZZY.SQLconnection"%>
<%@page import="java.security.SecureRandom"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String time=request.getParameter("time");
String uid=request.getParameter("uid");
String mail=request.getParameter("mid");

Connection con = null;
    Statement st = null;
    Statement st1 = null;
    Connection conn = SQLconnection.getconnection();
    Statement sto = conn.createStatement();
    st = conn.createStatement();
    st1 = conn.createStatement();
    Random RANDOM = new SecureRandom();
            int PASSWORD_LENGTH = 4;
            String letters = "0123456789";
            String id = "";
            for (int i = 0; i < PASSWORD_LENGTH; i++) {
                int index = (int) (RANDOM.nextDouble() * letters.length());
                id += letters.substring(index, index + 1);
            }
            
            //String kgcid= " "+id;
    
    try {           
                    ResultSet rs1 = st1.executeQuery("SELECT * from user where id= '"+uid+"'");
                    rs1.next();
                    String bio  = rs1.getString("val");
                         String kgcid = "FUZZY" + bio +id;
               
            int i = sto.executeUpdate("update user set  kgc = '" + kgcid + "' where email='" + mail + "' AND time='"+time+"'" );
           System.out.println("Redirect Attributes==");
            if (i != 0) {
                ResultSet rs = st.executeQuery(" SELECT * from user where id= '"+uid+"'");
                if(rs.next()){
                    String dkey = rs.getString("kgc");
                    String msggg="Private Key:  "+dkey;                   
                 Mail ma= new Mail();
            ma.secretMail(msggg,"Downloadkey",mail);          
            String msg= "File Download Key:"+msggg;                         
                System.out.println("success");
                System.out.println("success");
                response.sendRedirect("kgc_request.jsp?msg=Key Sent");
            } else {
               
                System.out.println("failed");
                response.sendRedirect("kgc_request.jsp?msg=Key_gen_Failed");
                 }
                       }
    } catch (Exception ex) {
        ex.printStackTrace();
    }
%>

