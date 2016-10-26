<%@ page language="java" import="java.util.*" contentType="text/html;charset=utf-8" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>首页</title>
    <link rel="stylesheet"  href="css/main.css"/>
    <link rel="stylesheet" type="text/css" href="css/front.css">
  </head>
  <body>
<jsp:include page="top.jsp" />
  <div class="intro_content">
    <div class="center">
        <div class="flash">
            <div  class="topa main_banner1" id="IndexBanner"  style="opacity: 1; background-image: url(img/banner_01.jpg);">
            <div class="slider" style="background-image: url(img/bar_01.png);">
                <a class="slider_menu slider_menuleft" onfocus="this.blur()" href="javascript:rotateBanner(-1)"></a>
                <a class="slider_menu slider_menuright" onfocus="this.blur()" href="javascript:rotateBanner(1)"></a>
                <span class="slider_menubar"></span>
            </div>
        </div>
        </div>
    </div>
  <jsp:include page="bottom.jsp"/>
</div>

  <script type='text/javascript' src="${pageContext.request.contextPath}/js/jquery3.0.js"></script>
    <script type='text/javascript' src="${pageContext.request.contextPath}/js/jquery.js"></script>
    <script language="JavaScript">
        //定时器
        var timer ;
        var BodyHeight,BodyWidth;
        var yon = 0;
        var xon = 0;
        var step = 1;
        var Hoffset = 0;
        var Woffset = 0;
        $(function(){
            timer = setInterval(function(){rotateBanner(-1)},5000);
            $(".slider_menu").hover(function(){
                clearInterval(timer);
            }, function(){
                timer = setInterval(function(){rotateBanner(-1)},5000);
            });
            BodyHeight=parseInt(document.body.clientHeight);
            BodyWidth=parseInt(document.body.clientWidth);
            //alert(BodyWidth);
        });
        // begin:首页视觉区效果
        var _img = 1;
        function rotateBanner(step){
            _img+=step;
            if (_img>4) {
                _img=1;
            } else if (_img<=0) {
                _img=4;
            }
            $("#IndexBanner").stop().animate({opacity: 0},300, function(){
                $(this).css("background-image", "url(img/banner_0"+_img+".jpg)").animate({opacity: 1},300);
            });

            $(".slider").stop().animate({backgroundPositionY: 99}, 300, function(){
                $(this).css("background-image", "url(img/bar_0"+_img+".png)").animate({backgroundPositionY: 0}, 200);
            });
        }
        // end
    </script>
  </body>
</html>
