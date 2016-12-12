package server;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DataLoad.CSBieuMau;

/**
 * Servlet implementation class SuaBM
 */
@WebServlet("/SuaBM")
public class SuaBM extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SuaBM() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		String url = request.getParameter("url");
		String MaKhoa = request.getParameter("MaKhoa");
		String urlcs =request.getParameter("urlcs");
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		String mabieumau=null;
		for(int i = 1 ; i <= quantity;i ++)
		{
			//Parameter[i-1] = request.getParameter(Integer.toString(i));
			mabieumau = request.getParameter(Integer.toString(i));
			if (mabieumau!=null) break; 
		}
		CSBieuMau fr = new CSBieuMau();
		if(mabieumau!=null){
			ArrayList<Object> form =  (ArrayList<Object>)fr.getForm(mabieumau);
			int colCount =fr.size(mabieumau);
			request.setAttribute("form", form);
			request.setAttribute("colCount", colCount);
			request.getRequestDispatcher(urlcs).forward(request,response);
		}
		else response.sendRedirect("/web1/BieuMauKhoa?url="+url+"&MaKhoa="+MaKhoa);
		
	}

}
