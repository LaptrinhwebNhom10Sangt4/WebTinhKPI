package server;

import java.io.IOException;
import java.util.Hashtable;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class QLbmdg1
 */
@WebServlet("/QLbmdg1")
public class QLbmdg1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QLbmdg1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		String email1 = request.getParameter("email1");
		String url = request.getParameter("url");
		String tengv = request.getParameter("tengv");
		String ngduyet = request.getParameter("ngduyet");
		String role = request.getParameter("role");
		Hashtable<Integer,Integer> table = new Hashtable<Integer,Integer>();
		
		for(int i = 1 ; i <= quantity;i ++)
		{
//			out.println(request.getParameter(Integer.toString(i)));
			String conv = "row"+Integer.toString(i);
			String key = request.getParameter(conv);
			if (key == "") continue;
			String val = request.getParameter(key);
			if (val == "") continue;
			table.put(Integer.parseInt(key),Integer.parseInt(val));

		}

		
		for (Integer key : table.keySet()){
			String filter = new String(" email = '"+email1+"' and MABIEUMAU = "+key);
			String source = new String(" KPICAPTREN = "+table.get(key)+",DADUYETDG = TRUE ");
			if(ngduyet.equals("tbm")) source+=" ,TBMDUYET = TRUE ";
			if(ngduyet.equals("trk")) source+=" ,TRKDUYET = TRUE ";
			if(ngduyet.equals("bgh")) source+=" ,BGHDUYET = TRUE ";
			String table1 = new String(" bieumaudadk ");
			Datasource ds = new Datasource();
			ds.updateDataObject(source, table1, filter);	
		}
		
		response.sendRedirect(request.getContextPath()+"/QLbmdg?email1="+email1+"&url="+url+"&tengv="+tengv+"&role="+role);
	}
}
