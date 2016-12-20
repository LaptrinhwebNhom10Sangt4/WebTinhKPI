package server;

import java.io.IOException;
import java.util.Hashtable;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class PhanConggv
 */
@WebServlet("/PhanConggv")
public class PhanConggv extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public PhanConggv() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		String MaCV = request.getParameter("MaCV");
		String email = request.getParameter("email");
		String MaKhoa = request.getParameter("MaKhoa");
		String url = request.getParameter("url");
		Hashtable<String, String> table = new Hashtable<String, String>();

		for (int i = 1; i <= quantity; i++) {
			String conv = "row" + Integer.toString(i);
			String key = request.getParameter(conv);
			if (key == "")
				continue;
			String val = request.getParameter(key);
			if (val == "" || val == null) continue;
			table.put(key, val);

		}
		
		for (String key : table.keySet()){
			String source = "MaCV ="+MaCV+",email='"+table.get(key)+"',tientrinh = 0";
			String table1 = " phancong ";
			Datasource ds = new Datasource();
			ds.insertDataObject(table1, source);
		}
		response.sendRedirect(request.getContextPath()+"/Phancong?url="+url+"&MaCV="+MaCV+"&email="+email+"&MaKhoa="+MaKhoa);

	}

}
