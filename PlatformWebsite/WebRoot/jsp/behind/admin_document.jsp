<%@ page language="java" import="java.util.*" pageEncoding="gbk"
	contentType="text/html; charset=utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'admin_news.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css" href="css/behind.css">
<link rel="stylesheet" type="text/css" href="css/front.css">
</head>

<body>
	<div class="admin_news_head">
		<div class="admin_head_1">
			<div style="float: left; display: inline-block">
				<p>���ĺ�̨�������</p>
			</div>
			<div class="admin_inf">
				<ul>
					<li><a href="jsp/behind/sign.jsp">�˳�</a></li>
				</ul>
			</div>
		</div>
		<div class="admin_list">
			<ul>
				<li><a
					href="${pageContext.request.contextPath}/jsp/behind/admin_news.jsp">��������</a></li>
				<li><a
					href="${pageContext.request.contextPath}/jsp/behind/admin_document.jsp">�����ļ�</a></li>
			</ul>
		</div>

	</div>
	<div class="admin_news_content">
		<div class="admin_center">
			<div class="admin_center_left">
				<ul>
					<li><img src="img/symbol_pound.gif"><a
						id="admin_declare_material">�걨����</a><img
						src="img/control_play.gif" style="margin-left: 60px"></li>
					<li><img src="img/symbol_pound.gif"><a
						id="admin_project_document">�����ļ�</a><img
						src="img/control_play.gif" style="margin-left: 60px"></li>
				</ul>
			</div>
			<div class="admin_center_right" id="admin_document">
				<div class="admin_center_right_content"  id="admin_upload1">
					<form action="NewUploadServlet.do" method="post"
						enctype="multipart/form-data">
					
						<div class="admin_upload_file">
							<p>�ϴ�����:</p>
							<div class="file">
								<input type="file" value="���" name="news_file">
							</div>${message}
						</div>
						<div class="admin_document_submit">
							<button type="submit">�ϴ�</button>
						</div>
					</form>
				</div>
				
				<div class="admin_center_right_content"  id="admin_upload2">
					<form action="MaterialUploadServlet.do" method="post"
						enctype="multipart/form-data">
						
						<div class="admin_upload_file">
							<p>�ϴ��ļ�:</p>
							<div class="file">
								<input type="file" value="���" name="material_file">
							</div>
						</div>
						<div class="admin_document_submit">
							<button type="submit">�ϴ�</button>
						</div>
					</form>
				</div>
			</div>
		</div>
		<div class="bottom">
			<div class="bottom_text">
				<img src="img/bottom.png">
				<div class="bottom_text_font">
					��ַ:�Ͼ��н������뾰���99�� �绰:8625-86188966 ����:8625-86188987 �ʱ�:211169<br>
					����Ƽ�ѧԺ
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/jquery3.0.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/ajax.js"></script>
</body>
</html>
