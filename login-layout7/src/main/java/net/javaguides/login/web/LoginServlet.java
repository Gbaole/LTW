package net.javaguides.login.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.javaguides.login.bean.LoginBean;
import net.javaguides.login.database.LoginDao;

/**
 * @email Ramesh Fadatare
 */

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private LoginDao loginDao;

	public void init() {
		loginDao = new LoginDao();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stsub
		Cookie cookies[] = request.getCookies();
		for (Cookie cook : cookies) {
			if (cook.getName().equals("cookUname")) {
				request.setAttribute("email", cook.getValue());
			} else if (cook.getName().equals("cookPass")) {
				request.setAttribute("password", cook.getValue());
			}
		}
		request.getRequestDispatcher("/layout/login.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String remember = request.getParameter("remember");
		LoginBean loginBean = new LoginBean();
		loginBean.setUsername(email);
		loginBean.setPassword(password);

		try {
			if (loginDao.validate(loginBean)) {
				HttpSession session = request.getSession();
				// session.setAttribute("username",username);

				// 4. save coookies
				Cookie cookieUname = new Cookie("cookUname", email);
				cookieUname.setMaxAge(60);
				Cookie cookiePass = new Cookie("cookPass", password);
				cookiePass.setMaxAge(60);
				if (remember != null) {
			cookiePass.setMaxAge(60);
				} else {
					cookiePass.setMaxAge(0);
				}

				response.addCookie(cookieUname);
				response.addCookie(cookiePass);
				
				response.sendRedirect("view-content.tiles");
			} else {
				HttpSession session = request.getSession();
				// session.setAttribute("user", username);
				response.sendRedirect(request.getContextPath() + "/layout/login.jsp");
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
}