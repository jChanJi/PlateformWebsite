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
                     <li><img src="img/volume_up.gif"><a id="brief_team">中心团队</a></li>
                    <li><img src="img/volume_up.gif"><a id="research_direction">研究方向</a></li>
                    <li><img src="img/volume_up.gif"><a id="undertake_project">承担项目</a></li>
                </ul>
            </div>
            <div class="center_right">
                <div class="center_right_top">
                    <div class="center_title"><img src="img/play.png"><h1 id="team_title">中心团队</h1></div>
                </div>
                <div class="center_right_blow">
                    <div class="center_text" id="team_text">
                        郑海荣，博士，研究员，博士生导师。医工所副所长，劳特伯医学成像研究中心主任 刘新，医学博士，研究员 钟耀祖，博士，研究员
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
