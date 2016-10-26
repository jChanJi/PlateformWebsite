<%@ page language="java" import="java.util.*" contentType="text/html;charset=utf-8" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'rules.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link rel="stylesheet" type="text/css" href="css/front.css">
  </head>
  
  <body>
      <jsp:include page="top.jsp"></jsp:include>
      <div class="intro_content">
    <div class="center">
        <div class = "center_img">
        <jsp:include page="float_img.jsp"></jsp:include>
        </div>
        <div class="img_blow">
            <div class="center_left">
                <ul>
                    <li><img src="img/volume_up.gif"><a id="rule_over">总则</a></li>
                    <li><img src="img/volume_up.gif"><a id="rule_one">第一章：办公秩序</a></li>
                    <li><img src="img/volume_up.gif"><a id="rule_two">第二章:例会制度</a></li>
                    <li><img src="img/volume_up.gif"><a id="rule_three">第三章：值班制度</a></li>
                    <li><img src="img/volume_up.gif"><a id="rule_four">第四章：物资管理制度</a></li>
                </ul>
            </div>
            <div class="center_right">
                <div class="center_right_top">
                    <div class="center_title"><img src="img/play.png"><h1 id="rule_title">总则</h1></div>
                </div>
                <div class="center_right_blow">
                    <div class="center_text" id="rule_text">
                       1． 为了加强研究院管理水平，明确内部管理职责，使管理工作 更加标准化、制度化和规范化
                        ，确保研究院各项工作能够顺利展开，结合研究院现阶段实际情况，特制订本制度。 2． 本制度
                        适用于研究院所有工作人员，应严格遵守各项规定。 3． 切合研究院实际，根据不同的制度内容编
                        写相应的规范化要 求，力求使办公室各项工作都有章可循、有法可依，保证公司的办公事务有效开展。
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
