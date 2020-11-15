<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>成绩管理</title>
<style type="text/css">
#center{margin-top:250px;margin-left:500px;}
	#left{float: left;}
			#middle{float: left;}
			#right{float: left;}
</style>
  </head>
  
  <body>
		<div id="left">
	<form action="${pageContext.request.contextPath}/grade_addGrade.action" method="post">
		<input type="text" name="grade.id" placeholder="ID" /><br/>
		<input type="text" name="grade.stuName" placeholder="学生姓名" /><br/>
		<input type="text" name="grade.math" placeholder="数学成绩" /><br/>
		<input type="text" name="grade.chinese" placeholder="语文成绩" /><br/>
		<input type="text" name="grade.english" placeholder="英语成绩" /><br/>
		<input type="text" name="grade.physics" placeholder="物理成绩" /><br/>
		<input type="text" name="grade.biology" placeholder="生物成绩" /><br/>
		<input type="text" name="grade.chemistry" placeholder="化学成绩" /><br/>
		<button type="submit">增加</button>
	</form>
	</div>
	
	<div id="middle">
	<form action="${pageContext.request.contextPath}/grade_findGrade.action" method="post">
		<input type="text" name="grade.id" placeholder="请输入id搜索"/>
		<button type="submit">搜索</button>
	</form><br/>
	<form action="${pageContext.request.contextPath}/grade_deleteGrade.action" method="post">
		<input type="text" name="grade.id" placeholder="请输入指定id删除"/>
		<button type="submit">删除</button>
	</form>
	
	</div>
	
	<div id="right">
	<form action="${pageContext.request.contextPath}/grade_modifyGrade.action" method="post">
		<input type="text" name="grade.id" placeholder="请输入想修改的id" /><br/>
		<input type="text" name="grade.stuName" placeholder="学生姓名" /><br/>
		<input type="text" name="grade.math" placeholder="数学成绩" /><br/>
		<input type="text" name="grade.chinese" placeholder="语文成绩" /><br/>
		<input type="text" name="grade.english" placeholder="英语成绩" /><br/>
		<input type="text" name="grade.physics" placeholder="物理成绩" /><br/>
		<input type="text" name="grade.biology" placeholder="生物成绩" /><br/>
		<input type="text" name="grade.chemistry" placeholder="化学成绩" /><br/>
		<button type="submit">修改</button>
	</form>
	</div>
  <div id="center">
		<table border="5">
		<tr>
		<th>id</th> <th>姓名</th> <th>数学</th> <th>语文</th> <th>英语</th> <th>物理</th> <th>生物</th> <th>化学</th>
		</tr>
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
</table>
</div>
		
  </body>
</html>
