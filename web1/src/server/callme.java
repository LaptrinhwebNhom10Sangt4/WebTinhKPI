package server;

import java.io.IOException;
import java.io.PrintWriter;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/callme")
public class callme extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public callme() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		String a = request.getParameter("param");
		String b = request.getParameter("param1");
		//String c = request.getParameter("param2");
		//PrintWriter out = response.getWriter();
		//out.print("hello "+a+" "+b+" "+c);
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print("i have a"+a+" "+b);
		//if (url == "GiangVien.jsp")
		//{
		//	String email = (String)session.getAttribute("email");
		//	UserInfo ui = new UserInfo();
		//	request.setAttribute("info", info);
		//}		
		//HttpSession session = request.getSession();
		//session.setAttribute("url", url);
		//formRegistration fr= new formRegistration();
		//ArrayList<Object> form =  (ArrayList<Object>)fr.getForm();
		//ArrayList<Object> form1 =  (ArrayList<Object>)fr.getForm();
		//int colCount =fr.size();
		//session.setAttribute("form1", form1);
		//request.setAttribute("form", form);
		//request.setAttribute("colCount", colCount);
		//request.getRequestDispatcher(url).forward(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
