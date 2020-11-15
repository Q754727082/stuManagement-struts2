<%@ page language = "java" import = "java.util.*" contentType = "text/html;charset=GBK" pageEncoding = "utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
	<head>
		<meta charset="UTF-8">
		<title>学生成绩管理系统</title>
		<link rel="stylesheet" href="./css/style.css" type="text/css"/>
		<script type="text/javascript">
			
		</script>
		
	</head>
	<body>
		<div id="header">
				<span><img src="./img/logo.png"/></span>
			<p><i>学生成绩管理系统</i>
		</div>
		<div id="main">
			<div id="menubar">
				管理菜单<span>MAIN MENU</span><marquee scrollAmount=2 width=400>欢迎您的光临</marquee>
				
			</div>
			<div id="left">
				<div id="menu">
					<ul id="nav" >
						<li><a href="skip_skip1.action" ><img src="./img/55.png" />&nbsp;&nbsp;课后休闲</a></li>
						<li><a href="course_findAllStuCourse.action" ><img src="./img/61.png" />&nbsp;&nbsp;选修课程</a></li>
						<li><a href="grade_findAllGrade.action" target="rightFrame"><img src="./img/61.png" />&nbsp;&nbsp;成绩管理</a></li>
						<li><a href="course_findAllCourse.action"><img src="./img/61.png" />&nbsp;&nbsp;课程信息</a></li>
						<li><a href="jqueryLB.jsp" target="rightFrame" ><img src="./img/61.png" />&nbsp;&nbsp;萌宠轮播</a></li>
					</ul>
				</div>
			</div>
			<div id="center">
				<iframe name="rightFrame" id="rightFrame" scrolling="auto"
					height="500px" width="100%"  marginwidth="0" src="default.html"
					marginheight="0" border="0" frameborder="0" align="center">
				</iframe>
			</div>
			<div id="right" style="text-align:center;color:	SaddleBrown">
				<div id="man"><img src="./img/head.png"/></div>
				<tr >
					<p><td >用户：${sessionScope.user.name}</td></p>
				</tr>
				<li><a href="login.jsp"><input type="button"value="注销"/></a></li>
			</div>
		</div>
		<div id="footer">
			<p>
				&copy;班级：17软一     姓名：欧华超       学号：1708030129  制作。
				<a href="#">学院网站</a>
			</p>
		</div>
	</body>
</html>
