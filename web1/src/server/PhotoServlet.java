package server;

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;

/**
 * Servlet implementation class PhotoServlet
 */
@WebServlet("/PhotoServlet")
public class PhotoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PhotoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	    final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
	    final String DB_URL = "jdbc:mysql://localhost:3306/contactdb";
	    final String User = "root";
	    final String Password = "huyhoang";
	    try {
	        Class.forName(JDBC_DRIVER);
	        Connection conn = (Connection) DriverManager.getConnection(DB_URL, User, Password);

	        PreparedStatement stmt = (PreparedStatement) conn.prepareStatement("select photo from person where person_id=?");
	        // stmt.setLong(1, Long.valueOf(request.getParameter("id")));
	        stmt.setInt(1,java.sql.Types.INTEGER);
	        ResultSet rs = stmt.executeQuery();
	        if (rs.next()) {
	            response.getOutputStream().write(rs.getBytes("photo"));
	        }
	        conn.close();
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	}
	
}
