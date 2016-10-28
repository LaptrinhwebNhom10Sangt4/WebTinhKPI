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
       // request.setAttribute("email",email); 
        if (eRole == -1) response.sendRedirect("errorLogin.jsp");
        else {
        	HttpSession session = request.getSession();
        	session.setAttribute("email", email);
        	UserInfo ui = new UserInfo();
			ArrayList<Object> info = (ArrayList<Object>)ui.getUserInfo(email);
			session.setAttribute("info", info);
			//request.setAttribute("email", email);
        	switch(eRole){
        	case 1:request.getRequestDispatcher("GiangVien.jsp").forward(request,response);break;
        	case 2:request.getRequestDispatcher("QuanTriVien.jsp").forward(request,response);break;
        	case 3:request.getRequestDispatcher("PhongToChuc_CanBo.jsp").forward(request,response);break;
        	case 4:request.getRequestDispatcher("TruongBoMon.jsp").forward(request,response);break;
        	case 5:request.getRequestDispatcher("TruongKhoa.jsp").forward(request,response);break;
        	case 6:request.getRequestDispatcher("BanGiamHieu.jsp").forward(request,response);break;
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
