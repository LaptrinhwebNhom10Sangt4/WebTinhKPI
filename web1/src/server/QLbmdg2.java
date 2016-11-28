package server;

import java.io.IOException;
import java.util.Hashtable;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class QLbmdg2
 */
@WebServlet("/QLbmdg2")
public class QLbmdg2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QLbmdg2() {
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
		String email = request.getParameter("email");
		String url = request.getParameter("url");
		String tengv = request.getParameter("tengv");
		String ngduyet = request.getParameter("ngduyet");
		String role = request.getParameter("role");
		Hashtable<Integer,String> table = new Hashtable<Integer,String>();
		
		for(int i = 1 ; i <= quantity;i ++)
		{
//			out.println(request.getParameter(Integer.toString(i)));
			String conv = "row"+Integer.toString(i);
			String key = request.getParameter(conv);
			if (key == "") continue;
			String val = request.getParameter(key);
			if (val == "" || val == null) val = "FALSE";
			table.put(Integer.parseInt(key),val);

		}

		
		for (Integer key : table.keySet()){
			String filter = new String(" email = '"+email+"' and MABIEUMAU = "+key);
			String source = new String(" TRKDUYET ="+table.get(key));
			String table1 = new String(" bieumaudadk ");
			Datasource ds = new Datasource();
			ds.updateDataObject(source, table1, filter);	
		}
		
		response.sendRedirect("/web1/QLbmdg?email="+email+"&url="+url+"&tengv="+tengv+"&role="+role);
	}

}
