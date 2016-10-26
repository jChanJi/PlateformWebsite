<%@ page language="java" import="java.util.*" pageEncoding="gbk" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>联系我们</title>
    
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
        <div class="img_blow" style="padding: 12px">
            <div class="connect_us1">
                <div class="connect_us2">
                    <div class="connect_list">
                        <ul>
                            <li><a  class="btn" title="8888XXXX6666" ><img src="img/weixin.png" alt="微信" ><p>微信</p></a></li>
                            <li><a  class="btn" title="5234626572" ><img src="img/qq.png" alt="QQ"><p>QQ</p></a></li>
                            <li><a   class="btn" title="8625-86188966" ><img src="img/cpeople.png" alt="客服" ><p>客服</p></a></li>
                            <li><a  class="btn" title="888888@168.com" ><img src="img/email.png" alt="邮件" ><p>邮件</p></a></li>
                        </ul>
                    </div>
                </div>
            </div>


        </div>
    </div>
 <jsp:include page="bottom.jsp"></jsp:include>
</div>
<script src="${pageContext.request.contextPath}/js/jquery3.0.js" style="text/javascript"></script>
<script>
    $(function(){
        $('a.btn').mouseover(function(e){
            var x = 10;
            var y = 10;
            this.myTitle = this.title;
            this.title = '';
            var tooltip = '<div id="tooltip">'+this.myTitle+'</div>'
            $('body').append(tooltip);
            $('#tooltip')
                    .css({
                        'position':'absolute',
                        'top':(e.pageY+y)+'px',
                        'left':(e.pageX+x)+'px',
                        'color':'red',
                        'font-size':'16pt'
                    }).show('fast');
        }).mouseout(function(){
            this.title = this.myTitle;
            $('#tooltip').remove();
        }).mousemove(function(e){
            var x = 10;
            var y = 10;
            $('#tooltip')
                    .css({
                        'top':(e.pageY+y)+'px',
                        'left':(e.pageX+x)+'px'
                    })
        })
    })
</script>
  </body>
</html>
