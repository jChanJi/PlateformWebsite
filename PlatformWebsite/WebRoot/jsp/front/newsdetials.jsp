<%@ page language="java" import="java.util.*" pageEncoding="gbk" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@page import="entity.New" %>
<%@page import="dao.NewOperationDao" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'newsdetials.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/front.css">
  </head>
  
  <body>
   <div class="newpage_top">
   <a href="jsp/front/brief_new.jsp" style="color:fff;width:50px;height:auto;float:right">·µ»Ø</a>
   </div>

<%
String id =request.getParameter("id");
New new1 = new New();
NewOperationDao textOperationDao = new NewOperationDao();
textOperationDao.mselect(id,new1);
 %>
<div class="NewsArticle">
    <h1><%=new1.getMtitle() %></h1>
   <p><%=new1.getMtext()%></p>
</div>

<jsp:include page="bottom.jsp"></jsp:include>
  </body>
</html>
