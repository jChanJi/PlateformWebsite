<%@ page language="java" import="java.util.*" pageEncoding="gbk" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'float_img.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	    <link href="css/front.css" rel="stylesheet">
    <link href="css/lrtk.css" rel="stylesheet">
  </head>
  
  <body>
   <div class = "center_img">
            <!-- 代码 开始 -->
            <div id="box">
                <div class="prev"></div>
                <div class="next"></div>
                <ul class="bigUl">
                    <li style="z-index:1"><a ><img src="img/001.jpg"alt="图1" /></a></li>
                    <li><a ><img src="img/002.jpg" alt="图2" /></a></li>
                    <li><a ><img src="img/003.jpg" alt="图3" /></a></li>
                    <li><a ><img src="img/004.jpg" alt="图4" /></a></li>
                    <li><a ><img src="img/005.jpg" alt="图5" /></a></li>
                    <li><a ><img src="img/006.jpg" alt="图6" /></a></li>
                    <li><a ><img src="img/007.jpg" alt="图7" /></a></li>
                </ul>
                <ul class="numberUl">
                    <li class="night"><a href="javascript:;">1</a></li>
                    <li><a href="javascript:;">2</a></li>
                    <li><a href="javascript:;">3</a></li>
                    <li><a href="javascript:;">4</a></li>
                    <li><a href="javascript:;">5</a></li>
                    <li><a href="javascript:;">6</a></li>
                    <li><a href="javascript:;">7</a></li>
                </ul>
                <div>
                    <ul class="textUl">
                        <li style="display:block;"><a ></a></li>
                        <li><a ></a></li>
                        <li><a ></a></li>
                        <li><a ></a></li>
                        <li><a ></a></li>
                        <li><a ></a></li>
                        <li><a ></a></li>
                    </ul>
                </div>
            </div>
            <!-- 代码 结束 -->

        </div>
        <script src="../js/jquery3.0.js" type="text/javascript"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/ajax.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/lrtk.js"></script>
<script>
    window.onload = function()
    {
        var oBox = document.getElementById('box');
        var oPrev = getByClass(oBox,'prev')[0];
        var oNext = getByClass(oBox,'next')[0];
        var oBigUl = getByClass(oBox,'bigUl')[0];
        var aLiBig = oBigUl.getElementsByTagName('li');
        var oNumUl = getByClass(oBox,'numberUl')[0];
        var aLiNumber = oNumUl.getElementsByTagName('li');
        var oTextUl = getByClass(oBox,'textUl')[0];
        var aLiText = oTextUl.getElementsByTagName('li');
        var nowZindex = 1;
        var now = 0;
        function tab()
        {
            for(var i=0; i<aLiNumber.length; i++)
            {
                aLiNumber[i].className = '';
            }
            aLiNumber[now].className = 'night';

            aLiBig[now].style.zIndex = nowZindex++;
            aLiBig[now].style.opacity = 0;
            startMove(aLiBig[now],'opacity',100);
            for(var i=0; i<aLiText.length; i++)
            {
                aLiText[i].style.display = 'none';
            }
            aLiText[now].style.display = 'block'

        }

        for(var i=0; i<aLiNumber.length; i++)
        {
            aLiNumber[i].index = i;
            aLiNumber[i].onclick = function()
            {

                if(this.index==now)return;
                now = this.index;

                tab();
            }
        }
        oNext.onmouseover = oPrev.onmouseover = oBigUl.onmouseover = function()
        {
            startMove(oPrev,'opacity',100);
            startMove(oNext,'opacity',100)
        }
        oNext.onmouseout = oPrev.onmouseout = oBigUl.onmouseout = function()
        {
            startMove(oPrev,'opacity',0);
            startMove(oNext,'opacity',0)
        }
        oPrev.onclick = function()
        {
            now--
            if(now==-1)
            {
                now=aLiNumber.length-1;
            }
            tab();
        }

        oNext.onclick = function()
        {
            now++
            if(now==aLiNumber.length)
            {
                now=0;
            }
            tab();
        }

        var timer = setInterval(oNext.onclick,3000)
        oBox.onmouseover = function()
        {
            clearInterval(timer)
        }
        oBox.onmouseout = function()
        {
            timer = setInterval(oNext.onclick,1000)//改变速度修改3000 ，例如3000=3秒钟
        }
    }
</script>
  </body>
</html>
