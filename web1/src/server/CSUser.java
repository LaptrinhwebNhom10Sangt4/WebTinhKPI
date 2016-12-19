package server;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.activation.DataSource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DataLoad.formRegistration;

/**
 * Servlet implementation class CSUser
 */
@WebServlet("/CSUser")
public class CSUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CSUser() {
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
		String source ="pass='"+pass+"',role="+role+",faculty="+faculty;
		String table ="users";
		String filter = "email ='"+email+"'";
		Datasource ds = new Datasource();
		ds.updateDataObject(source, table, filter);
		source ="name ='"+name+"',gender='"+gender+"',mscb="+mscb+",address='"+address+"'";
		table ="userinfo";
		filter = "email ='"+email+"'";
		ds.updateDataObject(source, table, filter);
		response.sendRedirect(request.getContextPath()+"/DSGV");
	}

}
