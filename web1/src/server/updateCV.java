package server;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class updateCV
 */
@WebServlet("/updateCV")
public class updateCV extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateCV() {
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
		String MaKhoa = request.getParameter("MaKhoa");
		String url = request.getParameter("url");
		int count = 0;
		ArrayList<String> macvct= new ArrayList<String>();
		for(int i = 1 ; i <= quantity;i ++)
		{
			//Parameter[i-1] = request.getParameter(Integer.toString(i));
			macvct.add(request.getParameter(Integer.toString(i)));
			if (macvct.get(count)==null) macvct.remove(count--);
			count++;
		}
		for(int i = 1; i <= macvct.size();i++)
		{
			String filter = new String("MaCtcv='"+macvct.get(i-1)+"' and email='"+email+"'");
			String source = new String("done=TRUE");
			String table = new String("tientrinhcv");
			Datasource ds = new Datasource();
			ds.updateDataObject(source, table, filter);	
			//update ud = new update(source,table,filter);
		}
		response.sendRedirect("/web1/CvDcPc?url="+url+"&email="+email+"&MaKhoa="+MaKhoa);
	}

}
