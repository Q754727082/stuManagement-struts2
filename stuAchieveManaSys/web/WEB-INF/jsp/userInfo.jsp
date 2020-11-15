<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>查询用户表</title>
    <style type="text/css">
		#center{margin-left:500px;}
		button{margin-left:530px;}
	</style>
	
  </head>
  
  <body>
  <h1 align="center" style="color:red;">当前登录的用户为：${sessionScope.user.name}</h1><br/>
  	<h3 align="center" style="color:green;">他的电话为：${sessionScope.user.phone}</h3><br/>
  	<h3 align="center" style="color:green;">他的邮箱为：${sessionScope.user.email}</h3><br/>
  	<form action="${pageContext.request.contextPath}/user_findAllUser.action" method="post">
  	<button type="submit">查看所有用户信息</button>
  	</form>
  	<div id="center">
		<table border="3">
		<tr>
		<th>id</th><th>姓名</th><th>密码</th><th>手机号</th><th>邮箱</th>
		</tr>
		<s:iterator value="list" >
     <tr>
     <td><s:property value="id" /></td>
    <td><s:property value="name" /></td>
    <td><s:property value="password" /></td>
    <td><s:property value="phone" /></td>
	<td><s:property value="email" /></td>
     </tr>
    </s:iterator>
</table>
	<a href="login.jsp"><input type="button" value="回到登录页面"/></a>
</div>

  </body>
</html>
