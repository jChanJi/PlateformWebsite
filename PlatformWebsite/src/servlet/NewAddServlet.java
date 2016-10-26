package servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.NewOperationDao;
import entity.New;



public class NewAddServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
		
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//增加
	   	request.setCharacterEncoding("utf-8");
		//获得文章标题和内容
		String text_title = request.getParameter("text_title");
		String content = request.getParameter("content");
		//文章增加的时间
		
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date d= new Date();
		String data=simpleDateFormat.format(d);
		//System.out.println(text_title);
		//System.out.println(content);
		//System.out.println(data);
		//创建New对象
		 New news =new New();
		 NewOperationDao textOperationDao = new NewOperationDao();
		 news.setMtitle(text_title);
		 news.setMtext(content);
		 news.setMtime(data);
		boolean b =  textOperationDao.minsert(news);
		if(b)
		{
			request.setAttribute("addresult","添加成功");
		}
		request.getRequestDispatcher("jsp/behind/admin_news.jsp").forward(request, response);
		 
		
		
		
		
		
		
	}

}
