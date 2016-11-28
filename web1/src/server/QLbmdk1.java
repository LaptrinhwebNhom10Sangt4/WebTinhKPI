package server;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DataLoad.Duyetbmdadk1;

/**
 * Servlet implementation class QLbmdk1
 */
@WebServlet("/QLbmdk1")
public class QLbmdk1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QLbmdk1() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		String url = request.getParameter("url");
		String email = request.getParameter("email");
		String tengv = request.getParameter("tengv");
		String role = request.getParameter("role");
		Duyetbmdadk1 fr = new Duyetbmdadk1(email);
		ArrayList<Object> form =  (ArrayList<Object>)fr.getForm();
		int colCount =fr.size();
		request.setAttribute("form", form);
		request.setAttribute("colCount", colCount);
		request.setAttribute("tengv", tengv);
		request.setAttribute("email", email);
		request.setAttribute("role", role);
		request.getRequestDispatcher(url).forward(request,response);
	}

}
