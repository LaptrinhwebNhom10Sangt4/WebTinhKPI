package server;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdateBM
 */
@WebServlet("/UpdateBM")
public class UpdateBM extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public UpdateBM() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		String url = request.getParameter("url");
		String MaKhoa = request.getParameter("MaKhoa");
		String MABIEUMAU = request.getParameter("MABIEUMAU");
		String KEHOACH = request.getParameter("KEHOACH");
		String CHIDAO = request.getParameter("CHIDAO");
		String CHITIETKEHOACH = request.getParameter("CHITIETKEHOACH");
		String CHITIEU = request.getParameter("CHITIEU");
		String KPIMAX = request.getParameter("KPIMAX");
		String TYTRONG = request.getParameter("TYTRONG");
		if(TYTRONG == "") TYTRONG = request.getParameter("TmpTYTRONG");
		if(KPIMAX == "") KPIMAX = request.getParameter("TmpKPIMAX");
		String source ="KEHOACH='"+KEHOACH+"',CHIDAO='"+CHIDAO+"',CHITIETKEHOACH='"+CHITIETKEHOACH+"',CHITIEU='"+CHITIEU+"',KPIMAX="+KPIMAX+",TYTRONG="+TYTRONG;
		String table ="regform";
		String filter = "MABIEUMAU="+MABIEUMAU;
		Datasource ds = new Datasource();
		ds.updateDataObject(source, table, filter);
		response.sendRedirect("/web1/BieuMauKhoa?url="+url+"&MaKhoa="+MaKhoa);
	}

}
