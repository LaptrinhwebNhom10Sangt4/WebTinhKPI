package server;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DataLoad.ChiTietCv;
import DataLoad.CvDcPhancong;
/**
 * Servlet implementation class CvDcPc
 */
@WebServlet("/CvDcPc")
public class CvDcPc extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public CvDcPc() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		String email = request.getParameter("email");
		String url = request.getParameter("url");
		CvDcPhancong fr = new CvDcPhancong(email);
		ArrayList<Object> form =  (ArrayList<Object>)fr.getForm();
		ChiTietCv fr1 = new ChiTietCv(email);
		String[][]form1 = fr1.getform();
		String[][]form3 = fr1.getform1();
		ArrayList<Object> form2=  (ArrayList<Object>)fr.getForm1();
		int rowCount = fr1.CountRow();
		int rowCount1 = fr1.CountRow1();
		request.setAttribute("form", form);
		request.setAttribute("form1", form1);
		request.setAttribute("form2", form2);
		request.setAttribute("form3", form3);
		int colCount =fr.size();
		int colCount1 =fr.size1();
		request.setAttribute("colCount", colCount);
		request.setAttribute("colCount1", colCount1);
		request.setAttribute("rowCount", rowCount);
		request.setAttribute("rowCount1", rowCount1);
		request.getRequestDispatcher(url).forward(request,response);
	}
}
