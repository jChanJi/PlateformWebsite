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
                    <li><img src="img/volume_up.gif"><a id="rule_over">����</a></li>
                    <li><img src="img/volume_up.gif"><a id="rule_one">��һ�£��칫����</a></li>
                    <li><img src="img/volume_up.gif"><a id="rule_two">�ڶ���:�����ƶ�</a></li>
                    <li><img src="img/volume_up.gif"><a id="rule_three">�����£�ֵ���ƶ�</a></li>
                    <li><img src="img/volume_up.gif"><a id="rule_four">�����£����ʹ����ƶ�</a></li>
                </ul>
            </div>
            <div class="center_right">
                <div class="center_right_top">
                    <div class="center_title"><img src="img/play.png"><h1 id="rule_title">����</h1></div>
                </div>
                <div class="center_right_blow">
                    <div class="center_text" id="rule_text">
                       1�� Ϊ�˼�ǿ�о�Ժ����ˮƽ����ȷ�ڲ�����ְ��ʹ������ ���ӱ�׼�����ƶȻ��͹淶��
                        ��ȷ���о�Ժ������ܹ�˳��չ��������о�Ժ�ֽ׶�ʵ����������ƶ����ƶȡ� 2�� ���ƶ�
                        �������о�Ժ���й�����Ա��Ӧ�ϸ����ظ���涨�� 3�� �к��о�Ժʵ�ʣ����ݲ�ͬ���ƶ����ݱ�
                        д��Ӧ�Ĺ淶��Ҫ ������ʹ�칫�Ҹ���������¿�ѭ���з���������֤��˾�İ칫������Ч��չ��
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
