<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>选修课程</title>
	<link rel="stylesheet" href="css/style1.css">
	<link rel="stylesheet" type="text/css" href="css/htmleaf-demo.css">
</head>
<body>
	<header class="htmleaf-header">
			<h1>课后休息下，看下美景。</h1>
			<h3>用户：${sessionScope.user.name}&nbsp;&nbsp;,您好！</h3>
			<h5>您的电话为：${sessionScope.user.phone}</h5>
			<h5>您的邮箱为：${sessionScope.user.email}</h5>
		</header>
	<div id="wrap">
	  <a href="#" class="hb">
	    <div class="c">
	      <img src="img/1.jpg" alt=""/>
	      <div class="txt">
	        <h1>Title here</h1>
	        <p>Some longer text here thats wide enough to span on several lines.</p>
	      </div>
	    </div>
	  </a>
	  <div class="fullBg">
	    <img src="img/1.jpg" alt=""/>
	  </div>
	  <a href="#" class="hb">
	    <div class="c">
	      <img src="img/2.jpg" alt=""/>
	      <div class="txt">
	        <h1>Title here</h1>
	        <p>Some longer text here thats wide enough to span on several lines.</p>
	      </div>
	    </div>
	  </a>
	  <div class="fullBg">
	    <img src="img/2.jpg" alt=""/>
	  </div>
	  <a href="#" class="hb">
	    <div class="c">
	      <img src="img/3.jpg" alt=""/>
	      <div class="txt">
	        <h1>Title here</h1>
	        <p>Some longer text here thats wide enough to span on several lines.</p>
	      </div>
	    </div>
	  </a>
	  <div class="fullBg">
	    <img src="img/3.jpg" alt=""/>
	  </div>
	  <a href="#" class="hb">
	    <div class="c">
	      <img src="img/4.jpg" alt=""/>
	      <div class="txt">
	        <h1>Title here</h1>
	        <p>Some longer text here thats wide enough to span on several lines.</p>
	      </div>
	    </div>
	  </a>
	  <div class="fullBg">
	    <img src="img/4.jpg" alt=""/>
	  </div>
	</div>
	
	<script src="js/jquery-1.11.0.min.js" type="text/javascript"></script>
	<script type="text/javascript">
		$(document).ready(function(){
		  var docWidth = $('body').width(),
		      $wrap = $('#wrap'),
		      $images = $('#wrap .hb'),
		      slidesWidth = $wrap.width();
		  
		  $(window).on('resize', function(){
		    docWidth = $('body').width();
		    slidesWidth = $wrap.width();
		  })
		  
		  $(document).mousemove(function(e) {
		    var mouseX = e.pageX,
		        offset = mouseX / docWidth * slidesWidth - mouseX / 2;
		    
		    $images.css({
		      '-webkit-transform': 'translate3d(' + -offset + 'px,0,0)',
		              'transform': 'translate3d(' + -offset + 'px,0,0)'
		    });
		  });
		})
	</script>
</body>
</html>
