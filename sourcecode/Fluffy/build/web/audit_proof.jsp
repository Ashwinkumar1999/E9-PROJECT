<%@page import="FUZZY.SQLconnection"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    String fid = request.getParameter("fid");
    String uid = request.getParameter("did");
    System.out.println(" \n filekey :" + fid );
    Connection con = SQLconnection.getconnection();
    Statement st = con.createStatement();
    Statement st1 = con.createStatement();
    Statement sto = con.createStatement();
    Statement st2 = con.createStatement();
    Statement st3 = con.createStatement();
    try {
         int k = st2.executeUpdate("update cloud_request set status = 'Proof Sent' where filekey = '"+fid+"'");
        ResultSet rs = st.executeQuery("Select * from fileupload where filekey ='" + fid + "'");
        if (rs.next()) {
            String hash = rs.getString("hashcode");
            DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
            Date date = new Date();
            String time = dateFormat.format(date);
            System.out.println("Date and Time : " + time);
            int j = sto.executeUpdate("update audit_request set hash_proof = " + hash + " where filekey = '"+fid+"'");
            int s = sto.executeUpdate("update fileupload set audit_status = 'Audition Success ' where filekey = '"+fid+"'");
           System.out.println("Redirect Attributes==");
            int i = st1.executeUpdate("INSERT into audit_proof(filekey, time , uid, hashproof)values('" + fid + "','" + time + "','" + uid + "','" + hash +"')");
            if (i != 0) {
                response.sendRedirect("cloud_audit.jsp?msg=Proof_sent");

            }

        } else {
            response.sendRedirect("cloud_audit.jsp?msg=Proof_failed");
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }


%>