<%@ page language="java" import="java.util.*" contentType="text/html;charset=utf-8" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'team_introduction.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="css/front.css">


  </head>
  
  <body>
 <jsp:include page="top.jsp"></jsp:include>]
 <div class="intro_content">
    <div class="center">
        <div class = "center_img">
        <jsp:include page="float_img.jsp"></jsp:include>
        </div>
        <div class="img_blow">
            <div class="center_left">
                <ul>
                     <li><img src="img/volume_up.gif"><a id="brief_team">�����Ŷ�</a></li>
                    <li><img src="img/volume_up.gif"><a id="research_direction">�о�����</a></li>
                    <li><img src="img/volume_up.gif"><a id="undertake_project">�е���Ŀ</a></li>
                </ul>
            </div>
            <div class="center_right">
                <div class="center_right_top">
                    <div class="center_title"><img src="img/play.png"><h1 id="team_title">�����Ŷ�</h1></div>
                </div>
                <div class="center_right_blow">
                    <div class="center_text" id="team_text">
                        ֣���٣���ʿ���о�Ա����ʿ����ʦ��ҽ���������������ز�ҽѧ�����о��������� ���£�ҽѧ��ʿ���о�Ա ��ҫ�棬��ʿ���о�Ա
                    </div>
                </div>
            </div>
        </div>

    </div>
   <jsp:include page="bottom.jsp"></jsp:include>
</div>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery3.0.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/ajax.js"></script>
  </body>
</html>
