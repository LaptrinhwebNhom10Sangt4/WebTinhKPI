package server;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DataLoad.BMKhoa;
import DataLoad.formRegistration;

/**
 * Servlet implementation class BieuMauKhoa
 */
@WebServlet("/BieuMauKhoa")
public class BieuMauKhoa extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BieuMauKhoa() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = request.getParameter("url");
		String MaKhoa = request.getParameter("MaKhoa");
		BMKhoa fr = new BMKhoa();
		ArrayList<Object> form =  (ArrayList<Object>)fr.getForm(MaKhoa);
		//ArrayList<Object> form1 =  (ArrayList<Object>)fr.getForm();
		int colCount =fr.size(MaKhoa);
		//session.setAttribute("form1", form1);
		request.setAttribute("form", form);
		request.setAttribute("colCount", colCount);
		request.getRequestDispatcher(url).forward(request,response);
	}


}
