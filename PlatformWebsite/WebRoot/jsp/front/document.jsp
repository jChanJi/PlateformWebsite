<%@ page language="java" import="java.util.*"
	contentType="text/html;charset=utf-8" pageEncoding="gbk"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@page import="dao.GetFileNameDao"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'document.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link href="css/front.css" rel="stylesheet">

</head>

<body>
	<jsp:include page="top.jsp"></jsp:include>
	<div class="intro_content">
		<div class="center">
			<div class="center_img">
				<jsp:include page="float_img.jsp"></jsp:include>
			</div>
			<div class="img_blow">
				<div class="center_left">
					<ul>
						<li><img src="img/volume_up.gif"><a
							id="declare_material">申报材料</a></li>
						<li><img src="img/volume_up.gif"><a
							id="project_document">立项文件</a></li>
					</ul>
				</div>
				<div class="center_right" id="passage">
					<div class="center_right_top">
						<div class="center_title">
							<img src="img/play.png">
							<h1 id="document_title">申报材料</h1>
						</div>
					</div>
					<div class="center_right_blow">
						<div class="center_text" id="document_text">
							<div class="document_list" id="material_list">
								<ul>
								
									<%
										String files = application.getRealPath("/") + "news";
										ArrayList<String> fileName = new ArrayList<String>();
										GetFileNameDao getFileNameDao = new GetFileNameDao();
										getFileNameDao.getAllFileName(files, fileName);
										int len = fileName.size();
										for (int i = 0; i < len; i++) {
									%>

									<li>
										<div class="document_title">
											<a href="NewDownloadServlet.do?filename=<%=fileName.get(i)%>"><%=fileName.get(i)%></a>
										    ${downresult}
										</div>
										<!--div class="document_operation">
											<p>预览</p>
										</div-->
									</li>
									<%
										}
									%>

								</ul>
							</div>
							
									<div class="document_list" id="document_list">
								<ul>
									<%
									String files2 = application.getRealPath("/") + "material";
									ArrayList<String> fileName2 = new ArrayList<String>();
										GetFileNameDao getFileNameDao2 = new GetFileNameDao();
										getFileNameDao2.getAllFileName(files2, fileName2);
									    int len2 = fileName2.size();
									    for(int j=0;j<len2;j++)
									    {
									
									%>

									<li>
										<div class="document_title">
											<a href="NewDownloadServlet2.do?filename2=<%=fileName2.get(j) %>"><%=fileName2.get(j) %></a>
										</div>
										<!--div class="document_operation">
											<p>预览</p>
										</div-->
									</li>
									<%} %>
								</ul>

							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
		<jsp:include page="bottom.jsp" />
	</div>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/jquery3.0.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/ajax.js"></script>
</body>
</html>
