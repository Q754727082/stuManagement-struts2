<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
  <title>增加成绩</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/css/bootstrap.min.css">
  <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://cdn.staticfile.org/popper.js/1.12.5/umd/popper.min.js"></script>
  <script src="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
	<h1 align="center" style="color:red;">增加学生成绩</h1><br/>
  <form class="form-inline" action="${pageContext.request.contextPath}/grade_addGrade.action" method="post">
    
 	 <input type="text" class="form-control" name="grade.id" placeholder="请输入ID" / >&nbsp;&nbsp;&nbsp;&nbsp;
    
     <input type="text" class="form-control" name="grade.stuName" placeholder="请输入学生姓名" />&nbsp;&nbsp;&nbsp;&nbsp;
 
    <input type="text" class="form-control" name="grade.math" placeholder="请输入数学成绩" / >&nbsp;&nbsp;&nbsp;&nbsp;<br/><br/>
   
    <input type="text" class="form-control" name="grade.chinese" placeholder="请输入语文成绩" / >&nbsp;&nbsp;&nbsp;&nbsp;
   
    <input type="text" class="form-control" name="grade.english" placeholder="请输入英语成绩" / >&nbsp;&nbsp;&nbsp;&nbsp;
   
    <input type="text" class="form-control" name="grade.physics" placeholder="请输入物理成绩" / >&nbsp;&nbsp;&nbsp;&nbsp;<br/><br/><br/><br/>
  
    <input type="text" class="form-control" name="grade.biology" placeholder="请输入生物成绩" / >&nbsp;&nbsp;&nbsp;&nbsp;
   
    <input type="text" class="form-control" name="grade.chemistry" placeholder="请输入化学成绩" / >&nbsp;&nbsp;&nbsp;&nbsp;
    <button type="submit" class="btn btn-primary">提交</button>
  </form>
</div>

</body>
</html>