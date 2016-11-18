package server;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DataLoad.Duyetbmdadk;

/**
 * Servlet implementation class QLbmdk
 */
@WebServlet("/QLbmdk")
public class QLbmdk extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public QLbmdk() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		String url = request.getParameter("url");
		String email = request.getParameter("email");
		Duyetbmdadk fr = new Duyetbmdadk(email);
		ArrayList<Object> form =  (ArrayList<Object>)fr.getForm();
		int colCount =fr.size();
		request.setAttribute("form", form);
		request.setAttribute("colCount", colCount);
		request.getRequestDispatcher(url).forward(request,response);
	}

}
