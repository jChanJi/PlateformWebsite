<%@ page language="java" import="java.util.*" contentType="text/html;charset=utf-8" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'top_bottom.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/front.css">


  </head>
  
  <body>
  <div class="top">
    <div class="top1">
    <div class="top_pic">
        <img src="img/top.png">
        <p>���ܽ�ͨ���̼����о�����</p>
    </div>
    </div>
    <div class="top2">
        <div class="navigation">
            <ul>
                <li><a href="${pageContext.request.contextPath}/jsp/front/main.jsp">��ҳ</a></li>
                <li>|</li>
                <li><a href="${pageContext.request.contextPath}/jsp/front/brief_introdction.jsp">���ļ��</a></li>
                <li>|</li>
                <li><a href="${pageContext.request.contextPath}/jsp/front/brief_new.jsp">��������</a></li>
                <li>|</li>
                <li><a href="${pageContext.request.contextPath}/jsp/front/team_introduction.jsp"> �Ŷӽ���</a></li>
                <li>|</li>
                <li><a href="${pageContext.request.contextPath}/jsp/front/achievements.jsp">�Ƽ��ɹ�</a></li>
                <li>|</li>
                <li><a href="${pageContext.request.contextPath}/jsp/front/rules.jsp">�����ƶ�</a></li>
                <li>|</li>
                <li><a href="${pageContext.request.contextPath}/jsp/front/document.jsp">�����ļ�</a></li>
                <li>|</li>
                <li><a href="${pageContext.request.contextPath}/jsp/front/connect.jsp">��ϵ����</a></li>
            </ul>
        </div>
    </div>
</div>
  </body>
</html>
