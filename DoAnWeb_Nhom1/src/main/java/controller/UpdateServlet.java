package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ConnectDB;
import model.NoiDung;

/**
 * Servlet implementation class UpdateServlet
 */
@WebServlet("/updateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 @Override
	    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			response.setContentType("text/html");
			response.setCharacterEncoding("UTF-8");
			request.setCharacterEncoding("UTF-8");
			
		 	int maid = Integer.parseInt(request.getParameter("id"));
	        String tennd = request.getParameter("Title");
	        String tomtatnd = request.getParameter("Brief");
	        String noidungnd = request.getParameter("Content");
	        
	        NoiDung nd = new NoiDung(maid, tennd, tomtatnd, noidungnd);
	        ConnectDB db = new ConnectDB();
	        try {
	            if (db.UpdateContent(maid, nd)) {
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
