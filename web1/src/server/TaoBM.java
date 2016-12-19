package server;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TaoBM
 */
@WebServlet("/TaoBM")
public class TaoBM extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public TaoBM() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		String qtv = request.getParameter("qtv");
		String url = request.getParameter("url");
		String MaKhoa = request.getParameter("MaKhoa");
		String MABIEUMAU = request.getParameter("MABIEUMAU");
		String KEHOACH = request.getParameter("KEHOACH");
		String CHIDAO = request.getParameter("CHIDAO");
		String CHITIETKEHOACH = request.getParameter("CHITIETKEHOACH");
		String CHITIEU = request.getParameter("CHITIEU");
		String KPIMAX = request.getParameter("KPIMAX");
		String TYTRONG = request.getParameter("TYTRONG");
		String source ="MABIEUMAU="+MABIEUMAU+",KEHOACH='"+KEHOACH+"',CHIDAO='"+CHIDAO+"',CHITIETKEHOACH='"+CHITIETKEHOACH+"',CHITIEU='"+CHITIEU+"',KPIMAX="+KPIMAX+",TYTRONG="+TYTRONG+",MaKhoa="+MaKhoa;
		String table ="regform";
		Datasource ds = new Datasource();
		ds.insertDataObject(table, source);
		if(qtv==null) response.sendRedirect(request.getContextPath()+"/BieuMauKhoa?url="+url+"&MaKhoa="+MaKhoa);
		else response.sendRedirect(request.getContextPath()+"/AllForm?url="+url);
		
	}

}
