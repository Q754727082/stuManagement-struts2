<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

	<title>选修课程</title>
	<style type="text/css">
#center{text-align:center;margin-top:200px;}
</style>
	</head>
	<body>
	<h1 align="center" style="color:red;">选修课程</h1>
	<div id="center" >
   <form action="${pageContext.request.contextPath}/course_addCourse.action" method="post">
  <input type="text" name="course.courseNO" placeholder="请输入课程编号" /><br/> <br/>
  <button type="submit">选修课程</button>
 </form>
 </div>
	</body>
	
</html>