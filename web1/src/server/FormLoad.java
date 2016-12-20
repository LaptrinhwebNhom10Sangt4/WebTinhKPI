package server;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import DataLoad.formRegistration;

@WebServlet("/FormLoad")
public class FormLoad extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
    public FormLoad() {
        super();
        // TODO Auto-generated constructor stub
    }
    

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = request.getParameter("getform");
		formRegistration fr= new formRegistration();
		ArrayList<Object> form =  (ArrayList<Object>)fr.getForm();
		//ArrayList<Object> form1 =  (ArrayList<Object>)fr.getForm();
		int colCount =fr.size();
		//session.setAttribute("form1", form1);
		request.setAttribute("form", form);
		request.setAttribute("colCount", colCount);
		request.getRequestDispatcher(url).forward(request,response);
	}

}
