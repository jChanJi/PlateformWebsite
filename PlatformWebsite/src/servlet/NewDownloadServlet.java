package servlet;


import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class NewDownloadServlet extends HttpServlet {
	
	
    
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String path = request.getServletContext().getRealPath("/")+"news/";
    String filename = request.getParameter("filename");
    File filepath= new File(path+filename);
    String filename2 = new String();
    
    filename2=URLEncoder.encode(filename,"UTF-8").replace("+","%20");
    if(filename2.length()>150)
    {
    	filename2=new String(filename.getBytes(),"iso8859-1").replace(" ","%20");
   
    }
    if(filepath.exists())
    {
    	//设置相应类型的application/octetstream
    	response.setContentType("application/x-msdownload");
    	//设置头信息
    	response.addHeader("Content-Disposition",    
    		      " attachment;filename=" +filename2
    	); //new String(filename.getBytes("GBK"),"UTF-8") 
    	InputStream inputStream =  new FileInputStream(filepath);
    	ServletOutputStream outputStream = response.getOutputStream();
    	byte[] b =new byte[1024];
    	int n;
    	while ((n=inputStream.read(b))!=-1) {
			outputStream.write(b,0,n);
		}
    	//关闭输入输出流
    	inputStream.close();
    	outputStream.close();
    }
    else {
    	request.setAttribute("downresult","下载失败");
    	request.getRequestDispatcher("jsp/front/document.jsp").forward(request, response);
    	
	}
    
   
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
            
	}
}
