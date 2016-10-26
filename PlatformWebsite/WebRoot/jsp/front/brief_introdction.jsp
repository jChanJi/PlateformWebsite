<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="gbk"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'brief_introdction.jsp' starting page</title>

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
			<div class="center_img">
				<jsp:include page="float_img.jsp"></jsp:include>
			</div>
			<div class="img_blow">
				<div class="center_left">
					<ul>
						<li><img src="img/volume_up.gif"><a id="brief_intro">���Ľ���</a></li>
						<li><img src="img/volume_up.gif"><a id="brief_framwork">���ļܹ�</a></li>
						<li><img src="img/volume_up.gif"><a id="brief_location">����λ��</a></li>
						<li><img src="img/volume_up.gif"><a
							id="brief_equipment">�����豸���</a></li>
					</ul>
				</div>
				<div class="center_right">
					<div class="center_right_top">
						<div class="center_title">
							<img src="img/play.png">
							<h1 id="intro_title">���Ľ���</h1>
						</div>
					</div>
					<div class="center_right_blow">
						<div class="center_text" id="intro_text">
							�Ϲ������о�Ժ����Ϊ���й������о�Ժ�Ϲ������о����ġ����ǹ���Ժ�Ļ����й������о�Ժ����������λ��
							�����������о��������Ϲ������о�Ժ�Ĵ����������ٽ������й���������ѧԺ���ڡ��㲥���Ӵ�ѧ���Ľ���
							����������ר��ѧԺ���ڡ��й������黭�о��ᴴ���о�Ա���㶫�����黭��Э�᳣�����¡������鷨��չ��
							ί��ίԱ���׽��������֮��������ѧ��������������ѧ�����ί�᳣�����鳤���Ļ����Ļ����黭Ժ��Ժ
							�����й����ּ�Э���Ա���л�ʫ��ѧ���Ա���й����ѧ���Ա���㶫���ѧ�����¡�ԭ�����й㲥���Ӵ�
							ѧУ��������һ�Ű��������ֳ���Ϲ������о�Ժ���Ⱥ�Ƹ���ˡ������ձ����糤�ۻ��󽫾����й�����ίԱ
							��ȫ�����ż���Э����ϯ�����������Ŵ�����������ڣ�ԭ�й�����ѧԺԺ�������������ų����й���Э����
							ϯ�������ҽ�ί�ս�ί�����ԛh���ڣ�ԭ��������ѧԺԺ�����й����ּ�Э�ḱ��ϯ���й����֡����ӽ�������
							����ѫ�»���ߣ����л�ʫ��ѧ��������᳤��ԭ��������־ֳ���ȫ����Э�����鳤������ɽ�½��ڣ�ԭ��
							������ѧԺ��Ժ�����й�����Э�ḱ��ϯ���������������ҡ������ɹ�����ʦ�������۲Ž��ڣ�ԭ��������ѧ
							Ժ��Ժ�����������������ҡ������ɹ�����ʦ��ȫ����һλ�ٻ񡰽�ʳɾͽ����Ĺ����ң�������Ϊ����Ժ����Ƹ
							�����Ҫ�߼������У������ϱʻ�˳�����������Ⱥ󣩣������ޡ�����������������ѧ�١�����ƽ����ʮ������
							��塢�ʽ�ΰ��ʷ��ǰ���첮�ۡ��췫�����󺣡����桢���衢�����������ߡ�����������������Ԫ�������
							�Ű������������衡��ܶ������ܴ󼯡����ս��������桢�������������������ˡ����ס���ȼ�����ɭ������
							����ɺ����ˮԴ����ī������������ٲȻ�����������桢�����򡢻����ԡ������򡢻����硢�޵��ҡ����W����֮�⡢
							Ҷ��Ұ���ξ��ġ������ڡ����������������������١�Ǯ���䡢¬ɭɭ�����񶫡���浡�������κΡ��̷ѩ����̷������
							���������š����������š���Ա���о�Ա�鼰��ʮ����ʡ�У��������ԣ��� �Ϲ������о�Ժ�о������������ѧ��Ϸ�硢Ӱ��
							�����֡��赸�����ա��������鷨��ѧ�ƣ��ɾٰ�����������ֻᡢ��ѵ�࣬�ɳ���������մǵ䡢����Ϳ��������
							�Ϲ������о�Ժ�������о������������봴������ȡ�÷�˶�ɹ�������˻���С�ʡ��ȫ�����������Ե��о��ɹ�������ѧ
							�ɹ����ʹ����󽱡��ڴ��ڼ䣬�Ϲ������о�Ժ��Ϊ���������������������£� 1���������й㲥���Ӵ�ѧ��������������
							��רҵ������רҵ�����ȫ������������һ�հף����˽���ȫ����һ��У԰���֣� 2�����ֳ�Ա������ȫ����һ���������
							ר��ѧԺ������������ר��ѧԺ�� 3��Ŀǰ��������Ҫ�������ȫ�����ϵͳ�ĵ�һ������ר�̵㡪���㶫�㲥���Ӵ�ѧ���շ�Ժ��
							���շ̴ֽ�����Ϊ����ȫ������һ������ѧԺ�춨����</div>
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
