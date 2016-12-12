package server;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DataLoad.Khoa;


/**
 * Servlet implementation class DSGV
 */
@WebServlet("/DSGV")
public class DSGV extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public DSGV() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		DataLoad.DSGV fr = new DataLoad.DSGV();
		ArrayList<Object> form =  (ArrayList<Object>)fr.getForm();
		int colCount =fr.size();
		Khoa faculty = new Khoa();
		ArrayList<Object> khoa = (ArrayList<Object>) faculty.getForm();
		int fasize = faculty.size();
		request.setAttribute("khoa", khoa);
		request.setAttribute("fasize", fasize);
		request.setAttribute("form", form);
		request.setAttribute("colCount", colCount);
		request.getRequestDispatcher("QuanTriVien.jsp").forward(request,response);
	}

}
