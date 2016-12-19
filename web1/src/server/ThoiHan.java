package server;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * Servlet implementation class ThoiHan
 */
@WebServlet("/ThoiHan")
public class ThoiHan extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ThoiHan() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Ngaybddk = request.getParameter("Ngaybddk");
		String Ngayktdk = request.getParameter("Ngayktdk");	
		String Ngaybddg = request.getParameter("Ngaybddg");
		String Ngayktdg = request.getParameter("Ngayktdg");
		String email = request.getParameter("email");
		String source = "";
		String filter = "";
		String table = "";
		Datasource ds = new Datasource();
		if(Ngaybddk != "" && Ngayktdk != ""){
			source ="NgayBD ='"+Ngaybddk+"',NgayKT='"+Ngayktdk+"'";
			filter ="Ngay='NgayDK'";
			table = "thoihan";
			ds.updateDataObject(source, table, filter);
		}
		if(Ngaybddg != "" && Ngayktdg != ""){
			source ="NgayBD ='"+Ngaybddg+"',NgayKT='"+Ngayktdg+"'";
			filter ="Ngay='NgayDG'";
			table = "thoihan";
			ds.updateDataObject(source, table, filter);
		}
		response.sendRedirect(request.getContextPath()+"/QLbmdk?url=PhongToChuc_Xembieumaucb.jsp&email="+email);
	}

}
