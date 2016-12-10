package server;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DataLoad.ChiTietPC;
import DataLoad.NVChitietCV;
import DataLoad.PcNV;

/**
 * Servlet implementation class Phancong
 */
@WebServlet("/Phancong")
public class Phancong extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Phancong() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		String url = request.getParameter("url");
		String MaCV = request.getParameter("MaCV");
		String email = request.getParameter("email");
		ChiTietPC fr = new ChiTietPC(MaCV);
		ArrayList<Object> form = (ArrayList<Object>) fr.getForm();
		NVChitietCV fr1 = new NVChitietCV(MaCV);
		String[][] form1 = fr1.getform();
		PcNV nv = new PcNV(email,MaCV);
		ArrayList<Object> formnv = (ArrayList<Object>) nv.getForm();
		int colCount1 = nv.size();
		int colCount = fr.size();
		int rowCount = fr1.CountRow();
		// session.setAttribute("form1", form1);
		request.setAttribute("MaCV", MaCV);
		request.setAttribute("form", form);
		request.setAttribute("colCount", colCount);
		request.setAttribute("form1", form1);
		request.setAttribute("rowCount", rowCount);
		request.setAttribute("formnv", formnv);
		request.setAttribute("colCount1", colCount1);
		request.getRequestDispatcher(url).forward(request, response);
	}

}
