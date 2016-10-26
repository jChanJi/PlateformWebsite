<%@ page language="java" import="java.util.*"
	contentType="text/html;charset=utf-8" pageEncoding="gbk"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@page import="dao.NewOperationDao"%>
<%@page import="dao.NoticeOperationDao"%>
<%@page import="entity.New"%>
<%@page import="entity.Notice"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'brief_new.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css" href="css/front.css">


</head>

<body>
	<jsp:include page="top.jsp" />
	<div class="intro_content">
		<div class="center">
			<div class="center_img">
				<jsp:include page="float_img.jsp"></jsp:include>
			</div>
			<div class="img_blow">
				<div class="center_left">
					<ul>
						<li><img src="img/volume_up.gif"><a id="news_changes">中心动态</a></li>
						<li><img src="img/volume_up.gif"><a id="new_notice">中心公告</a></li>
					</ul>
				</div>
				<div class="center_right">
					<div class="center_right_top">
						<div class="center_title">
							<img src="img/play.png">
							<h1 id="news_title">中心动态</h1>
						</div>
					</div>
					<div class="NewsList" style="min-height:500px">
						<div class="news_text_list" id="news_text1">
							<%
								ArrayList<New> list = new ArrayList<New>();
								NewOperationDao textOperationDao = new NewOperationDao();
								textOperationDao.show(list);
								for (int i = 0; i < list.size(); i++) {
							%>
							<div class="news_list">
								<a href="jsp/front/newsdetials.jsp?id=<%=list.get(i).getMid()%>"><%=list.get(i).getMtitle()%></a>
							</div>
							<%
								}
							%>
						</div>
						<div class="news_text_list" id="news_text2">
						<%
								ArrayList<Notice> list2 = new ArrayList<Notice>();
								NoticeOperationDao noticeOperationDao = new NoticeOperationDao();
								noticeOperationDao.nshow(list2);
								for (int i = 0; i < list2.size(); i++) {
							%>
							<div class="news_list">
								<a href="jsp/front/noticedetials.jsp?id=<%=list2.get(i).getNid()%>"><%=list2.get(i).getNtitle() %></a>
							</div>
							<%
								}
							%>
						</div>
					</div>
				</div>
			</div>

		</div>
		<jsp:include page="bottom.jsp" />
	</div>
	<script src="${pageContext.request.contextPath}/js/jquery3.0.js"
		style="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/js/ajax.js"
		style="text/javascript"></script>
</body>
</html>
