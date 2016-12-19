package server;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class XoaBm
 */
@WebServlet("/XoaBm")
public class XoaBm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public XoaBm() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		String email = request.getParameter("email");
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
			String source = new String("email='"+email+"' and MABIEUMAU = "+mabieumau.get(i-1));
			String table = new String("bieumaudadk");
			Datasource ds = new Datasource();
			ds.deleteDataObject(table,source);	
		}
		response.sendRedirect(request.getContextPath()+"/BmGV?url="+url+"&email="+email+"&MaKhoa="+MaKhoa);
	}
}
