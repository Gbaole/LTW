package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.editProfileDAO;
import dao.searchDAO;
import model.Content;
import model.MemberEdit;

/**
 * Servlet implementation class searchController
 */
@WebServlet("/searchCtl")
public class searchController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public searchController() {
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
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");

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
			//e.printStackTrace();
		}
		int id = mb.getId();// lay authorid

		// tao list san pham
		
		String txtSearch = request.getParameter("search");
		searchDAO searchdao = new searchDAO();
		List<Content> lst = new ArrayList<Content>();
		try {
			if (emailin.equals(common.common.EMAIL_ADMIN)) {
				lst = searchdao.getSearchProductsAdmin(txtSearch);
			} else {
			lst = searchdao.getSearchProducts(txtSearch, id);
			}
			request.setAttribute("listCT", lst);
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		request.setAttribute("txtsearch", txtSearch);
		request.getRequestDispatcher("search-content.tiles").forward(request, response);
	}

}
