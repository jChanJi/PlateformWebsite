package servlet;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.NoticeOperationDao;



@WebServlet(name="NoticeDeleteServlet",urlPatterns={"/NoticeDeleteServlet.do"})
public class NoticeDeleteServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//删除
	   	request.setCharacterEncoding("utf-8");
		//获得文章id
	   	String id = request.getParameter("nid");
	   	NoticeOperationDao noticeOperationDao = new NoticeOperationDao();
	    boolean b= noticeOperationDao.ndelete(id);

		if(b)
		{
			request.setAttribute("deleteresult","删除成功");
			request.getRequestDispatcher("jsp/behind/admin_news.jsp").forward(request, response);
		}
		else {
			System.out.println("deletefail");
		}
		 
		
		
		
		
		
		
	}

}
