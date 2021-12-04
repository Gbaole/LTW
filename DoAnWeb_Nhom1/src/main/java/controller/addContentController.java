package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Content;

import dao.addContentDAO;
import dao.editProfileDAO;
import model.MemberEdit;

/**
 * Servlet implementation class addContentController
 */
@WebServlet("/add-content")
public class addContentController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public addContentController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");

		
		String tennd = request.getParameter("Title");
		String tomtatnd = request.getParameter("Brief");
		String noidungnd = request.getParameter("Content");

		// lay authorid
		String emailin = "";

		Cookie cookies[] = request.getCookies();
		for (Cookie cook : cookies) {
			if (cook.getName().equals("cookUname")) {
				emailin = cook.getValue();
			}
		}
		
		request.setAttribute("email", emailin);
		editProfileDAO dao = new editProfileDAO();

		MemberEdit mb = new MemberEdit();
		
		try {
			mb = dao.getMember(emailin);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			response.sendRedirect(request.getContextPath()+"/layout/error.jsp");
			
		}
		
		int id = mb.getId();// lay authorid

		Content content = new Content(tennd, tomtatnd, noidungnd, id);
		
//		System.out.println(content.getBrief());
//		System.out.println(content.getAuthorid());
//		System.out.println(content.getTitle());
//		System.out.println(content.getContent());
//		
//
//		
//		response.getWriter().write("<script>\r\n"
//				+ "window.alert(\"bnjxxk\");\r\n"
//				+ "</script>");
//		
		addContentDAO adddao = new addContentDAO();
		try {
			adddao.AddContent(content);
			response.sendRedirect(request.getContextPath()+"/page-view");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
