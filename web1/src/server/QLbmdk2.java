package server;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/QLbmdk2")
public class QLbmdk2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public QLbmdk2() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		String email1 = request.getParameter("email1");
		String url = request.getParameter("url");
		String tengv = request.getParameter("tengv");
		String role = request.getParameter("role");
		int count = 0;
		ArrayList<String> mabieumau = new ArrayList<String>();
		for(int i = 1 ; i <= quantity;i ++)
		{
			//Parameter[i-1] = request.getParameter(Integer.toString(i));
			mabieumau.add(request.getParameter(Integer.toString(i)));
			if (mabieumau.get(count)==null) mabieumau.remove(count--);
			count++;
		}
		for(int i = 1; i <= mabieumau.size();i++)
		{
			String filter = new String("email = '"+email1+"' and MABIEUMAU = "+mabieumau.get(i-1));
			String source = new String("DADUYETDK = TRUE");
			String table = new String("bieumaudadk");
			Datasource ds = new Datasource();
			ds.updateDataObject(source, table, filter);	
			//update ud = new update(source,table,filter);
		}
		response.sendRedirect(request.getContextPath()+"/QLbmdk1?email1="+email1+"&url="+url+"&tengv="+tengv+"&role="+role);
	}

}
