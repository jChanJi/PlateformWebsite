package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.AdminDao;
import entity.Admin;

public class AdminServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	
	}
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		Admin admin = new Admin();
		AdminDao a = new AdminDao();
		if(name!=null&&password!=null)
		{
			admin.setName(name);
			admin.setPassword(password);
			if(a.valiadmin(admin)==false)
			{
				System.out.println("wrong！");
				System.out.println(admin.getName());
				System.out.println(admin.getPassword());
				response.sendRedirect(request.getContextPath() + "/jsp/behind/sign.jsp");
			}
			else {
				HttpSession session = request.getSession();
				session.setAttribute("name",name);
				response.sendRedirect(request.getContextPath() + "/jsp/behind/admin_news.jsp");
			}
		}
		else {
			response.sendRedirect(request.getContextPath() + "/jsp/behind/sign.jsp");
		}
		
	}

}
