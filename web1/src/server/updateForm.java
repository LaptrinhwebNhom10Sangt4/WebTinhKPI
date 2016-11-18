package server;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DataLoad.update;

/**
 * Servlet implementation class updateForm
 */
@WebServlet("/updateForm")
public class updateForm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateForm() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int mabieumau = Integer.parseInt(request.getParameter("mabieumau"));
		String email = request.getParameter("email");
		int kpi = Integer.parseInt(request.getParameter("kpi"));
		String tientrinh = request.getParameter("tientrinh");
		String url =request.getParameter("url");
		String filter = new String("email = '"+email+"' and MABIEUMAU = "+mabieumau);
		String source = new String("TIENTRINH = '"+tientrinh+"',KPIDANHGIA =" +kpi);
		String table = new String("bieumaudadk");
		update update = new update(source,table,filter);
		response.sendRedirect("/web1/Tinhtrang?mabieumau="+mabieumau+"&email="+email+"&url="+url);
	}

	
}
