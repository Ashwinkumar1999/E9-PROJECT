
package FUZZY;

import java.awt.Image;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.security.SecureRandom;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;
import javax.imageio.ImageIO;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;


@WebServlet("/signup")
@MultipartConfig(maxFileSize = 16177215)
public class signup extends HttpServlet {

   private String dbURL = "jdbc:mysql://localhost:3306/fuzzy";
    private String dbUser = "root";
    private String dbPass = "root";
    private SimpleDateFormat format;

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession(true);
        
        String name = request.getParameter("name");
    String mail = request.getParameter("email");
    String dob = request.getParameter("dob");
    String gender = request.getParameter("gender");
    String phone = request.getParameter("phone");
    String city = request.getParameter("city");
    String country = request.getParameter("country");
    String pass = request.getParameter("password");
    String rpass = request.getParameter("rpassword");
    String kgc = "waiting";
    String otp = "waiting";
    DateFormat dateFormat = new SimpleDateFormat("YYYY/MM/dd HH:mm:ss");
            Date date = new Date();
            String time = dateFormat.format(date);
        InputStream inputStream = null;
        Part filePart = request.getPart("bio_sign");
        long value=filePart.getSize();
        String val= String.valueOf(value);
        if (filePart != null) {
            System.out.println(filePart.getName());
            System.out.println(val);
            System.out.println(filePart.getContentType());
            inputStream = filePart.getInputStream();
        }
        Connection conn = null;
        String message  = null;
        try {

            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);

            String sql = "insert into user(name, email, dob, gender, phone, city, country, password, rpassword, time , kgc, otp, sign,val) values(?, ?, ?, ?, ?, ?, ?,?,?,?,?,?,?,?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, name);
            statement.setString(2, mail);
            statement.setString(3, dob);
            statement.setString(4, gender);
            statement.setString(5, phone);
            statement.setString(6, city);
            statement.setString(7, country);
            statement.setString(8, pass);
            statement.setString(9, rpass);
            statement.setString(10, time);
            statement.setString(11, kgc);
            statement.setString(12, otp);
            statement.setString(14, val);


            if (inputStream != null) {
                statement.setBlob(13, inputStream);
            }
           // statement.setString(8, otp);
            int row = statement.executeUpdate();
            if (row > 0) {

                response.sendRedirect("User.jsp?Successful");
            } else {
                response.sendRedirect("User_reg.jsp?failed");
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
}