<%@page import="dao.NewOperationDao"%>
<%@page import="dao.NoticeOperationDao"%>
<%@page import="entity.New"%>
<%@page import="entity.Notice"%>
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

<title>管理员新闻公告管理</title>
<link rel="stylesheet" type="text/css" href="css/behind.css">
<link rel="stylesheet" type="text/css" href="css/front.css">
</head>

<body>
	<div class="admin_news_head">
		<div class="admin_head_1">
			<div style="float: left; display: inline-block">
				<p>中心后台管理界面</p>
			</div>
			<div class="admin_inf">
				<ul>
					<li><a
						href="${pageContext.request.contextPath}/jsp/behind/sign.jsp">退出</a></li>
				</ul>
			</div>
		</div>
		<div class="admin_list">
			<ul>
				<li><a
					href="${pageContext.request.contextPath}/jsp/behind/admin_news.jsp">中心新闻</a></li>
				<li><a
					href="${pageContext.request.contextPath}/jsp/behind/admin_document.jsp">材料文件</a></li>
			</ul>
		</div>

	</div>
	<div class="admin_news_content">
		<div class="admin_center">
			<div class="admin_center_left">
				<ul>
					<li><img src="img/symbol_pound.gif"><a
						id="admin_brief_change">中心动态</a><img src="img/control_play.gif"
						style="margin-left: 60px"></li>
					<li><img src="img/symbol_pound.gif"><a
						id="admin_brief_notice">中心公告</a><img src="img/control_play.gif"
						style="margin-left: 60px"></li>
				</ul>
			</div>
			<div class="admin_center_right" id="admin_table">
				<div class="table">
					<p style="color:red">${deleteresult}</p>
					<p style="color:red">${addresult}</p>
					<p style="color:red">${modifyresult}</p>
					<table id="table1">
						<tbody>
							<tr>
								<th style="width:800px">新闻标题</th>
								<th style="width:200px;">时间</th>
								<th style="width:320px">操作</th>
							</tr>

							<%
								ArrayList<New> list = new ArrayList<New>();
								NewOperationDao textOperationDao = new NewOperationDao();
								textOperationDao.show(list);
								for (int i = 0; i < list.size(); i++) {
							%>
							<tr>
								<td style="text-align:left"><%=list.get(i).getMtitle()%></td>
								<td><%=list.get(i).getMtime()%></td>
								<td><a
									href="${pageContext.request.contextPath}/jsp/behind/modify.jsp?id=<%=list.get(i).getMid()%>>">修改</a>

									<a href="NewDeleteServlet.do?id=<%=list.get(i).getMid()%>">删除</a>

								</td>

							</tr>
							<%
								}
							%>
							<tr style="height: 100px;">
							<td style="border:none;">
							<button
						         onclick="window.location='${pageContext.request.contextPath}/jsp/behind/add.jsp'">增加</button>
							</td>
							</tr>
						</tbody>
					</table>
					<table id="table2">
						<tbody>
							<tr>
								<th style="width:800px">公告标题</th>
								<th style="width:200px;">时间</th>
								<th style="width:320px">操作</th>
							</tr>
							<%
								ArrayList<Notice> list2 = new ArrayList<Notice>();
								NoticeOperationDao noticeOperationDao = new NoticeOperationDao();
								noticeOperationDao.nshow(list2);
								for (int i = 0; i < list2.size(); i++) {
							%>
							<tr>
								<td><%=list2.get(i).getNtitle()%></td>
								<td><%=list2.get(i).getNtime()%></td>
								<td><a
									href="${pageContext.request.contextPath}/jsp/behind/modify2.jsp?id=<%=list2.get(i).getNid()%>">修改</a>
									<a href="NoticeDeleteServlet.do?nid=<%=list2.get(i).getNid()%>">删除</a></td>
							</tr>
							<%
								}
							%>
							<tr style="height: 100px;">
							<td style="border:none;">
							<button
						         onclick="window.location='${pageContext.request.contextPath}/jsp/behind/add2.jsp'">增加</button>
						         </td>
							</tr>
							
						</tbody>
					</table>
				</div>
			</div>

		</div>
		<div class="bottom">
			<div class="bottom_text">
				<img src="img/bottom.png">
				<div class="bottom_text_font">
					地址:南京市江宁区弘景大道99号 电话:8625-86188966 传真:8625-86188987 邮编:211169<br>
					金陵科技学院
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
