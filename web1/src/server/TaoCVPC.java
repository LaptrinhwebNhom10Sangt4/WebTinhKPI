package server;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Hashtable;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TaoCVPC
 */
@WebServlet("/TaoCVPC")
public class TaoCVPC extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TaoCVPC() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = request.getParameter("url");
		String email = request.getParameter("email");
		String MaKhoa = request.getParameter("MaKhoa");
		String MaCV = request.getParameter("MaCV");
		String TenCV = request.getParameter("TenCV");
		String NgHD = request.getParameter("NgHD");
		String Ngaybd = request.getParameter("Ngaybd");
		String Ngaykt = request.getParameter("Ngaykt");
		Hashtable<String,String> table = new Hashtable<String,String>();
		int count=1;
		for(int i=1;i<=5;i++){
			String conv = MaCV+".";
			String val = request.getParameter("cv"+Integer.toString(i));
			if (val == "" || val == null) continue;
			conv = conv+Integer.toString(count++);
			table.put(conv,val);
		}
		Datasource ds = new Datasource();
		String source = new String(" MaCv='"+MaCV+"',TenCV='"+TenCV+"',NgHD='"+NgHD+"',Ngaybd='"+Ngaybd+"',Ngaykt='"+Ngaykt+"',MaKhoa='"+MaKhoa+"'");
		String table1 = new String(" dscv ");
		ds.insertDataObject(table1,source);
		for (String key : table.keySet()){
			source = new String(" MaCvct='"+key+"',TenCvct='"+table.get(key)+"'");
			String source1 = new String(" MaCV='"+MaCV+"',MaCvct='"+key+"'");
			String table2 = new String(" dscvct ");
			table1 = new String(" cvchitiet ");
			ds.insertDataObject(table1,source);	
			ds.insertDataObject(table2, source1);
		}
		response.sendRedirect(request.getContextPath()+"/CvDcPc?url="+url+"&email="+email+"&MaKhoa="+MaKhoa);
	}

}
