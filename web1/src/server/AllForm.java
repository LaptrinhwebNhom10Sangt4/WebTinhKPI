package server;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DataLoad.GetAllForm;
import DataLoad.Khoa;

@WebServlet("/AllForm")
public class AllForm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AllForm() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = request.getParameter("url");
		GetAllForm fr = new GetAllForm();
		ArrayList<Object> form =  (ArrayList<Object>)fr.getForm();
		int colCount =fr.size();
		Khoa faculty = new Khoa();
		ArrayList<Object> khoa = (ArrayList<Object>) faculty.getForm();
		int fasize = faculty.size();
		request.setAttribute("khoa", khoa);
		request.setAttribute("fasize", fasize);
		request.setAttribute("form", form);
		request.setAttribute("colCount", colCount);
		request.getRequestDispatcher(url).forward(request,response);
	}

}
