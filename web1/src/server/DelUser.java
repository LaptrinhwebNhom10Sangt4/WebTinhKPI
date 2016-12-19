package server;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DelUser
 */
@WebServlet("/DelUser")
public class DelUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public DelUser() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		int count = 0;
		ArrayList<String> email = new ArrayList<String>();
		for(int i = 1 ; i <= quantity;i ++)
		{
			//Parameter[i-1] = request.getParameter(Integer.toString(i));
			email.add(request.getParameter(Integer.toString(i)));
			if (email.get(count)==null) email.remove(count--);
			count++;
		}
		Datasource ds = new Datasource();		
		for(int i = 1; i <= email.size();i++)
		{
			String source = "email ='"+email.get(i-1)+"'";
			String table = "bieumaudadk";			
			ds.deleteDataObject(table,source);
			table = "tientrinhcv";
			ds.deleteDataObject(table,source);
			table = "phancong";
			ds.deleteDataObject(table,source);
			table ="userinfo";
			ds.deleteDataObject(table,source);
			table = "users";
			ds.deleteDataObject(table,source);
		}
		response.sendRedirect(request.getContextPath()+"/DSGV");
	}

}
