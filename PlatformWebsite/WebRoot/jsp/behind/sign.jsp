<%@ page language="java" import="java.util.*" pageEncoding="gbk" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>管理员登录</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
    <link rel="stylesheet" type="text/css" href="css/behind.css">
  </head>
  <body>
  <div class="sign_top">
</div>
<div class="sign_content">
    <div class="sign_center">
        <div class="sign_center_left">
            <img src="${pageContext.request.contextPath}/img/top.png">
        </div>
        <div class="sign_center_right">
        <form action="AdminServlet" method="POST" name="form1">
             <p>科技平台网站后台管理</p>
            <div class="admin_name">
                <p>管理员：</p><input type="text" class="behind_text" name="name" >
            </div>
             <div class="admin_password">
                 <p>密码：</p><input type="password" class="behind_text" name="password">
             </div>
            <div class="admin_button">
                <input type="submit" style="padding: 5px;margin-left: 40px" value="提交">
                <input type="reset" style="padding: 5px;margin-left: 40px" value="取消" src="jsp/behind/sign.jsp">
            </div>
              </form>
        </div>
    </div>
    <div class="sign_bottom">
        <p>地址:南京市江宁区弘景大道99号 电话:8625-86188966 </p><p>传真:8625-86188987 邮编:211169</p>
        <p>金陵科技学院</p>
    </div>

</div>
<script type="text/javascript">

</script>
  </body>
</html>
