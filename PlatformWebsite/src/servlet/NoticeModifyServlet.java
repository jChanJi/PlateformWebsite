package servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import dao.NoticeOperationDao;

import entity.Notice;
@WebServlet(name="NoticeModifyServlet",urlPatterns={"/NoticeModifyServlet.do"})
public class NoticeModifyServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
		
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		//修改的id
		int id =Integer.parseInt(request.getParameter("id"));
		NoticeOperationDao textOperationDao = new NoticeOperationDao();
		//修改的标题和内容
		String title = request.getParameter("modify_title");
		String content = request.getParameter("content");
		//修改的时间
		Date d= new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String date = sdf.format(d);
		Notice new1 = new Notice();
		new1.setNid(id);
		new1.setNtitle(title);
		new1.setNtext(content);
		new1.setNtime(date);
		boolean b = textOperationDao.nupdate(new1);
		if(b)
		{
			request.setAttribute("modifyresult","修改成功");
			request.getRequestDispatcher("jsp/behind/admin_news.jsp").forward(request, response);
		}
		else {
			System.out.println("modifyfail");
		}
		
		
		
		
	}
}
