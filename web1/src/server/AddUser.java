package server;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddUser
 */
@WebServlet("/AddUser")
public class AddUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public AddUser() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String pass = request.getParameter("pass");
		String name = request.getParameter("name");
		String role = request.getParameter("role");
		String gender = request.getParameter("gender");
		String faculty = request.getParameter("faculty");
		String mscb = request.getParameter("mscb");
		String address = request.getParameter("address");
		String source ="email ='"+email+"',pass='"+pass+"',role="+role+",faculty="+faculty;
		String table ="users";
		Datasource ds = new Datasource();
		ds.insertDataObject(table, source);
		source ="email ='"+email+"',name ='"+name+"',gender='"+gender+"',mscb="+mscb+",address='"+address+"'";
		table ="userinfo";
		ds.insertDataObject(table, source);
		response.sendRedirect(request.getContextPath()+"/DSGV");
	}

}
