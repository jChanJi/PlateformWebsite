<%@ page language="java" import="java.util.*" pageEncoding="gbk" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>����Ա��¼</title>
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
             <p>�Ƽ�ƽ̨��վ��̨����</p>
            <div class="admin_name">
                <p>����Ա��</p><input type="text" class="behind_text" name="name" >
            </div>
             <div class="admin_password">
                 <p>���룺</p><input type="password" class="behind_text" name="password">
             </div>
            <div class="admin_button">
                <input type="submit" style="padding: 5px;margin-left: 40px" value="�ύ">
                <input type="reset" style="padding: 5px;margin-left: 40px" value="ȡ��" src="jsp/behind/sign.jsp">
            </div>
              </form>
        </div>
    </div>
    <div class="sign_bottom">
        <p>��ַ:�Ͼ��н������뾰���99�� �绰:8625-86188966 </p><p>����:8625-86188987 �ʱ�:211169</p>
        <p>����Ƽ�ѧԺ</p>
    </div>

</div>
<script type="text/javascript">

</script>
  </body>
</html>
