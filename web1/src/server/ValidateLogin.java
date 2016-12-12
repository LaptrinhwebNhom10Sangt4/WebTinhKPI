package server;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import DataLoad.*;

@WebServlet("/ValidateLogin")
public class ValidateLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public ValidateLogin() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
   
        String email = request.getParameter("email");
        String pass = request.getParameter("pass");
        int eRole = ConnectAndCheck.checkUser(email, pass);
        HttpSession session = request.getSession();
    	session.setAttribute("email", email);
       // request.setAttribute("email",email); 
        if (eRole == -1) request.getRequestDispatcher("TrangChu2.jsp").forward(request,response);
        else {
        	UserInfo ui = new UserInfo();
			ArrayList<Object> info = (ArrayList<Object>)ui.getUserInfo(email);
			session.setAttribute("info", info);
			faculty fc = new faculty(email);
			ArrayList<Object> khoa = (ArrayList<Object>)fc.getForm();
			String MaKhoa="";
			String TenKhoa="";
			if(khoa.size()!=0){
				MaKhoa = khoa.get(0).toString();
				TenKhoa = khoa.get(1).toString();
			}
			//String TenKhoa = DataLoad.faculty.TenKhoa;
			session.setAttribute("MaKhoa", MaKhoa);
			session.setAttribute("TenKhoa", TenKhoa);
			//request.setAttribute("email", email);
        	switch(eRole){
        	case 1:request.getRequestDispatcher("GiangVien.jsp").forward(request,response);break;
        	case 2:request.getRequestDispatcher("TruongBoMon.jsp").forward(request,response);break;
        	case 3:request.getRequestDispatcher("TruongKhoa.jsp").forward(request,response);break;
        	case 4:request.getRequestDispatcher("BanGiamHieu.jsp").forward(request,response);break;
        	case 5:request.getRequestDispatcher("PhongToChuc_CanBo.jsp").forward(request,response);break;
        	case 6:response.sendRedirect("/web1/DSGV");break;
        	}
        	
        }
       // if(ConnectAndCheck.checkUser(email, pass))
       // {
       //     RequestDispatcher rs = request.getRequestDispatcher("Welcome");
       //     rs.forward(request, response);
       // }
       // else
       // {
       //    out.println("Username or Password incorrect");
       //    RequestDispatcher rs = request.getRequestDispatcher("index.html");
       //    rs.include(request, response);
       // }
	}

}
