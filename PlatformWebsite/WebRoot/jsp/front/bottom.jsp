<%@ page language="java" import="java.util.*" contentType="text/html;charset=utf-8" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'bottom.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/front.css">

  </head>
  
  <body>
   <div class="bottom">
        <div class="bottom_text">
            <div class="bottom_text_font">
            <p>��ַ:�Ͼ��н������뾰���99�� ,�绰:8625-86188966</p>
            <p> ����:8625-86188987,�ʱ�:211169</p>
            <a href="${pageContext.request.contextPath}/jsp/behind/sign.jsp" style="text-decoration: none;color:FFF">����Ƽ�ѧԺ</a></div>

        </div>
    </div>
  </body>
</html>
