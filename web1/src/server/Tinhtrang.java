package server;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DataLoad.BieuMauDaDK;

/**
 * Servlet implementation class Tinhtrang
 */
@WebServlet("/Tinhtrang")
public class Tinhtrang extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Tinhtrang() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String mabieumau = request.getParameter("mabieumau");
		String email = request.getParameter("email");
		String url = request.getParameter("url");
		BieuMauDaDK bm = new BieuMauDaDK(email,mabieumau);
		ArrayList<Object> form = (ArrayList<Object>)bm.getForm();
		int colCount = bm.size();
		request.setAttribute("form", form);
		request.setAttribute("colCount", colCount);
		request.setAttribute("mabieumau", mabieumau);
		request.getRequestDispatcher(url).forward(request, response);
	}

}
