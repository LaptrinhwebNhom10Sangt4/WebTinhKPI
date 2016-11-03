package server;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DataLoad.CheckKPI;

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
		int kpi = Integer.parseInt(request.getParameter("kpidanhgia"));
		int check = CheckKPI.CheckKPImax(kpi,mabieumau);
		PrintWriter out = response.getWriter();
		out.println(check);
		
	}

	
}
