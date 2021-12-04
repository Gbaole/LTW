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

import dao.PageViewDAO;
import dao.editProfileDAO;
import model.Content;
import model.MemberEdit;

/**
 * Servlet implementation class PageViewController
 */
@WebServlet("/page-view")
public class PageViewController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public PageViewController() {
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
		int start;
		if (request.getParameter("page") != null) {
			start = (int) Integer.parseInt(request.getParameter("page"));
		} else {
			start = 1;
		}

		// System.out.print(start);
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
			response.sendRedirect(request.getContextPath() + "/layout/error.jsp");

		}

		int id = mb.getId();// lay authorid
		// System.out.print(id);

		PageViewDAO pvd = new PageViewDAO();

		List<Content> list = new ArrayList<Content>();
		int nPage;
		// System.out.print(nPage);

		if (common.common.EMAIL_ADMIN.equals(emailin)) {
			list = pvd.getRecordsAd(start, 10);
			nPage = pvd.getCountAd();

		} else {
			list = pvd.getRecordsMb(start, 10, id);
			nPage = pvd.getCountMb(id);
		}
		
		if (nPage % 10 == 0) {
			nPage = nPage / 10;
		} else {
			nPage = nPage / 10 + 1;
		}
		// System.out.print(nPage);
		request.setAttribute("PageView", list);
		request.setAttribute("nPage", nPage);
		request.setAttribute("CPage", start);
		request.getRequestDispatcher("view-content.tiles").forward(request, response);
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
