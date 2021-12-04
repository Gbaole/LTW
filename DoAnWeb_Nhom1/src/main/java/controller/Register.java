package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.RegisterDao;
import model.MemberRegister;

/**
 * Servlet implementation class Register
 */
@WebServlet("/register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname = request.getParameter("uname");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		MemberRegister memberRegister = new MemberRegister(uname, email, password);
		
		RegisterDao rDao = new RegisterDao();
		String result = rDao.insert(memberRegister);
		if(result == "1")
		{
			response.sendRedirect(request.getContextPath() + "/login");
		}
		else 
		{
			response.getWriter().write("<script>\r\n"
					+ "window.alert(\"Your email is already registered\");\r\n"
					+ "location.replace(\"/login-layout/layout/register.jsp\")\r\n"
					+ "</script>");
		}
		
	}

}
