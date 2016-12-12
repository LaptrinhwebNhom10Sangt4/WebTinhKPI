package server;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DataLoad.Khoa;
import DataLoad.UserInfo;
import DataLoad.Userinfos;

/**
 * Servlet implementation class SuaTK
 */
@WebServlet("/SuaTK")
public class SuaTK extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SuaTK() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		String email=null;
		for(int i = 1 ; i <= quantity;i ++)
		{
			//Parameter[i-1] = request.getParameter(Integer.toString(i));
			email = request.getParameter(Integer.toString(i));
			if (email!=null) break; 
		}
		if(email != null){
			UserInfo us = new UserInfo();
			Khoa faculty = new Khoa();
			ArrayList<Object> khoa = (ArrayList<Object>) faculty.getForm();
			int fasize = faculty.size();
			request.setAttribute("khoa", khoa);
			request.setAttribute("fasize", fasize);
			ArrayList<Object> form =  (ArrayList<Object>)us.getUserInfo(email);
			//ArrayList<Object> form1 =  (ArrayList<Object>)fr.getForm();
			int colCount =DataLoad.UserInfo.size;
			Userinfos fr = new Userinfos(email);
			ArrayList<Object> formInfo =  (ArrayList<Object>)fr.getFormUser();
			int colCount1 = fr.sizeUser();
			request.setAttribute("form", form);
			request.setAttribute("colCount", colCount);
			request.setAttribute("formInfo", formInfo);
			request.setAttribute("colCount1", colCount1);
			request.getRequestDispatcher("QuanTriVien_SuaUser.jsp").forward(request,response);
		}
		else request.getRequestDispatcher("/DSGV").forward(request,response);
	}	
		

}
