package server;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DataLoad.BieuMauDaDK;

@WebServlet("/Bieumaudadk")
public class TinhTrangbmdadk extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public TinhTrangbmdadk() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	//	String mabieumau = request.getParameter("mabieumau");
		String email = request.getParameter("email");
		String url = request.getParameter("url");
		BieuMauDaDK bm = new BieuMauDaDK(email, url);
		ArrayList<Object> form = (ArrayList<Object>)bm.getForm();
		int colCount = bm.size();
		request.setAttribute("form", form);
		request.setAttribute("colCount", colCount);
		request.getRequestDispatcher(url).forward(request, response);
	}

}
