package controller;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ConnectDB;
/**
 * Servlet implementation class DeleteServlet
 */
@WebServlet("/deleteservlet")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int maid = Integer.parseInt(request.getParameter("id"));
        ConnectDB connect = new ConnectDB();
        try {
            if (connect.deleteContent(maid)) {
                response.sendRedirect(request.getContextPath()+"/page-view");
            } else {
                response.sendRedirect("error.jsp");
            }
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

    }
}
