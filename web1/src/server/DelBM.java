package server;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DelBM
 */
@WebServlet("/DelBM")
public class DelBM extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DelBM() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		String MaKhoa = request.getParameter("MaKhoa");
		String url = request.getParameter("url");
		int count = 0;
		ArrayList<String> mabieumau = new ArrayList<String>();
		for(int i = 1 ; i <= quantity;i ++)
		{
			//Parameter[i-1] = request.getParameter(Integer.toString(i));
			mabieumau.add(request.getParameter(Integer.toString(i)));
			if (mabieumau.get(count)==null) mabieumau.remove(count--);
			count++;
		}
		for(int i = 1; i <= mabieumau.size();i++)
		{
			String source = new String("MABIEUMAU="+mabieumau.get(i-1));
			String table = new String("regform");
			Datasource ds = new Datasource();
			ds.deleteDataObject(table,source);	
		}
		response.sendRedirect("/web1/BieuMauKhoa?url="+url+"&MaKhoa="+MaKhoa);
	}

}
