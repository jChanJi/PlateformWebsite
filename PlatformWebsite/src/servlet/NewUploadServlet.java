package servlet;

import java.io.File;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;


@MultipartConfig(location="D:\\",fileSizeThreshold=1024)
public class NewUploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     doPost(request, response);

	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 返回Web应用程序文档根目录
	       String path = this.getServletContext().getRealPath("/");
	       Part p = request.getPart("news_file");
	       System.out.print(p);
	       String message="";
	       if(p.getSize() >1024*1024*3){    // 上传的文件不能超过3MB大小
	          p.delete();
	          message = "文件太大，不能上传！";
	       }else{
	          path = path +"\\news";
	          
	          File f = new File(path);
	          if( !f.exists()){   // 若目录不存在，则创建目录
	            f.mkdirs();
	       }
	       String h = p.getHeader("content-disposition");
	       String fname=null;
	       System.out.println(h);
	        //得到文件名
	       if(h.indexOf("\\")<0)
	       {
	    	   fname = h.substring(h.lastIndexOf("=")+2, h.length()-1);
	       }
	       else{
	          fname = h.substring(h.lastIndexOf("\\")+1 , h.length()-1); 
	       }
	       System.out.println(fname);
	       String path2= path + "\\"+ fname;
	     System.out.println(path2);
	       p.write(path2);
	       message ="文件上传成功！";
	    }
	      
	    request.setAttribute("message", message);
	    RequestDispatcher rd = request.getRequestDispatcher("jsp/behind/admin_document.jsp");
	    rd.forward(request, response);
	}
}
