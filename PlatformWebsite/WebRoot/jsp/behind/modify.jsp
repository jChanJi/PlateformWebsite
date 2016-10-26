<%@page import="entity.New"%>
<%@ page language="java" import="java.util.*" pageEncoding="gbk" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@page import="dao.NewOperationDao"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>文章修改界面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
		<link rel="stylesheet" type="text/css" href="css/front.css">
	<link rel="stylesheet" type="text/css" href="css/behind.css">
  </head>
  
  <body>
<div class="admin_news_head">
    <div class="admin_head_1">
        <div style="float: left; display: inline-block;">
        <p>文章修改界面</p>
        </div>
        <span onclick="window.location='${pageContext.request.contextPath}/jsp/behind/admin_news.jsp'">返回</span>
    </div>
</div>
<div class="modify_content">

    <div class="modify_center">
        <%
        String id = request.getParameter("id");
        New new1 = new New();
        NewOperationDao textOperationDao = new NewOperationDao();
        textOperationDao.mselect(id,new1);
         %>
         <form action="NewModifyServlet.do?id=<%=new1.getMid()%>" method="post">
        <div class="modify_title">
            <p>标题：</p>
            <input type="text"  name = "modify_title" class="modify_title_text" value="<%=new1.getMtitle()%>">
        </div>
        <p>正文：</p>
        <div class="modify_text_area">
           
            <textarea id="content"  name="content"  class="ckeditor">
             <%=new1.getMtext()%>
            </textarea>
        </div>
       
        <div class="submit_button">
            <button style="float: right;padding: 3px 3px;margin-right:30px;font-size: 10pt">提交</button>
        </div>
        </form>

    </div>
</div>
<script type="text/javascript" src="ckeditor4.5.1/ckeditor.js"></script>
<script type="text/javascript" src="js/ckeditor.js"></script>
</body>
</html>
