package server;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DataLoad.formRegistration;

/**
 * Servlet implementation class FormLoad1
 */
@WebServlet("/FormLoad1")
public class FormLoad1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FormLoad1() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = request.getParameter("url");
		String email = request.getParameter("email");
		String MaKhoa = request.getParameter("MaKhoa");
		formRegistration fr= new formRegistration(email,MaKhoa);
		ArrayList<Object> form =  (ArrayList<Object>)fr.getForm();
		//ArrayList<Object> form1 =  (ArrayList<Object>)fr.getForm();
		int colCount =fr.size();
		//session.setAttribute("form1", form1);
		request.setAttribute("form", form);
		request.setAttribute("colCount", colCount);
		request.getRequestDispatcher(url).forward(request,response);	}

}
