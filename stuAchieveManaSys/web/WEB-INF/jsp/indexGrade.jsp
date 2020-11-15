<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 1.01 Transitional//EN">
<html>
<head>
  <title>Bootstrap 实例</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/css/bootstrap.min.css">
  <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://cdn.staticfile.org/popper.js/1.12.5/umd/popper.min.js"></script>
  <script src="https://cdn.staticfile.org/twitter-bootstrap/4.1.0/js/bootstrap.min.js"></script>
  <style type="text/css">
  #center{text-align:center;}
  #middle{text-align:center;}
  </style>
</head>
<body>
<div id="center">
<a href="skip_skip4.action"><input type="button" value="增加成绩"/></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="skip_skip5.action"><input type="button" value="修改成绩"/></a>
</div><br/>

<div id="middle">
	<form action="${pageContext.request.contextPath}/grade_findGrade.action" method="post">
		<input type="text" name="grade.id" placeholder="请输入id搜索"/>
		<button type="submit">搜索</button>
	</form>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<form action="${pageContext.request.contextPath}/grade_deleteGrade.action" method="post">
		<input type="text" name="grade.id" placeholder="请输入指定id删除"/>
		<button type="submit">删除</button>
	</form>	
	</div>
<div class="container">
  
  <table class="table table-hover">
    <thead>
      <tr>
        <th>id</th> <th>姓名</th> <th>数学</th> <th>语文</th> <th>英语</th> <th>物理</th> <th>生物</th> <th>化学</th>
      </tr>
    </thead>
    <tbody>
    <s:iterator value="list" >
      <tr>
        <td><s:property value="id" /></td>
    <td><s:property value="stuName" /></td>
    <td><s:property value="math" /></td>
    <td><s:property value="chinese" /></td>
	<td><s:property value="english" /></td>
	<td><s:property value="physics" /></td>
	<td><s:property value="biology" /></td>
	<td><s:property value="chemistry" /></td>
      </tr>
     </s:iterator>
     
    </tbody>
  </table>
</div>

</body>
</html>