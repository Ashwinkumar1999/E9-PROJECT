<%@page import="FUZZY.SQLconnection"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    String uid = request.getParameter("uid");
    String fid = request.getParameter("fid");
    System.out.println(" \n filekey :" + uid );
    Connection con = SQLconnection.getconnection();
    Statement st = con.createStatement();
    Statement st1 = con.createStatement();
    Statement sto = con.createStatement();
    try {
        int j = sto.executeUpdate("update audit_request set status='sent' where uid ='" + uid + "' AND filekey ='" + fid + "' ");
        System.out.println("Redirect Attributes==");
        ResultSet rs = st.executeQuery("Select * from fileupload where uid ='" + uid + "' ");
        if (rs.next()) {
           // String fid= rs.getString("filekey");
            DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
            Date date = new Date();
            String time = dateFormat.format(date);
            System.out.println("Date and Time : " + time);
            int i = st1.executeUpdate("INSERT into cloud_request(filekey, time , uid, status) values('" + fid + "','" + time + "','" + uid + "','waiting')");
            if (i != 0) {
                response.sendRedirect("TPA_audit_request.jsp?requestsent");

            }

        } else {
            response.sendRedirect("TPA_audit_request.jsp?request failed");
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }




%>
