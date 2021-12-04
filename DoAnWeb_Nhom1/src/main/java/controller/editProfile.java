package controller;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.editProfileDAO;
import model.MemberEdit;

/**
 * Servlet implementation class editProfile
 */
@WebServlet("/editProfileController")
public class editProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */

    public editProfile() {
        super();
        // TODO Auto-generated constructor stub
    }
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");

		
		int id = Integer.parseInt(request.getParameter("ep_id"));
		String fn = request.getParameter("ep_firstname");
		String ln = request.getParameter("ep_lastname");
		String ph = request.getParameter("ep_phone");
		String ds = request.getParameter("ep_discription");
		String ut = java.time.LocalDateTime.now().toString();

		if(fn.length() >= 3 && fn.length() <= 30 && ln.length() >= 3 && ln.length() <= 30 && ph.length() >= 9 && ph.length() <= 13 && ds.length() <= 200) {
			
			MemberEdit mb = new MemberEdit();
			mb.setId(id);
			mb.setFirstname(fn);
			mb.setLastname(ln);
			mb.setPhone(ph);
			mb.setDiscription(ds);
			mb.setUpdatename(ut);
			
			try {
				editProfileDAO dao = new editProfileDAO();
				dao.editProfile(mb);
				response.getWriter().write("<script>\r\n"
						+ "window.alert(\"Edit success!!!\");\r\n"
						+ "location.replace(\"/login-layout/page-view\")\r\n"
						+ "</script>");
				//request.getRequestDispatcher("view-content.tiles").forward(request, response);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
			response.sendRedirect(request.getContextPath() + "/edit-profile");	
		}
		
	}

}
