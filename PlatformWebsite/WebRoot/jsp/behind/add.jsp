<%@ page language="java" import="java.util.*" pageEncoding="gbk" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>文章添加界面</title>
    
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
        <div style="float: left; display: inline-block;"><p>文章添加界面</p></div>
        <a style="width: 50px;height:auto;float:right;color:fff;text-decoration: none" href="jsp/behind/admin_news.jsp">返回</a>
    </div>
</div>
<div class="modify_content">
    <div class="modify_center">
        <form action="NewAddServlet.do" method="post">
        <div class="modify_title">
            <p>标题：</p>
            <input type="text" class="modify_title_text" name="text_title">
        </div>
        <p>正文：</p>
        <div class="modify_text_area">
            <textarea id="content"  name="content"  class="ckeditor">
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
