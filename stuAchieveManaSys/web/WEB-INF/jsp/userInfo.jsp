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
    
    <title>��ѯ�û���</title>
    <style type="text/css">
		#center{margin-left:500px;}
		button{margin-left:530px;}
	</style>
	
  </head>
  
  <body>
  <h1 align="center" style="color:red;">��ǰ��¼���û�Ϊ��${sessionScope.user.name}</h1><br/>
  	<h3 align="center" style="color:green;">���ĵ绰Ϊ��${sessionScope.user.phone}</h3><br/>
  	<h3 align="center" style="color:green;">��������Ϊ��${sessionScope.user.email}</h3><br/>
  	<form action="${pageContext.request.contextPath}/user_findAllUser.action" method="post">
  	<button type="submit">�鿴�����û���Ϣ</button>
  	</form>
  	<div id="center">
		<table border="3">
		<tr>
		<th>id</th><th>����</th><th>����</th><th>�ֻ���</th><th>����</th>
		</tr>
		<s:iterator value="list" >
�0�2�0�2�0�2 �0�2<tr>
�0�2�0�2�0�2 �0�2<td><s:property value="id" /></td>
�0�2 �0�2�0�2<td><s:property value="name" /></td>
�0�2 �0�2�0�2<td><s:property value="password" /></td>
�0�2 �0�2�0�2<td><s:property value="phone" /></td>
	<td><s:property value="email" /></td>
�0�2�0�2�0�2 �0�2</tr>
�0�2�0�2�0�2 </s:iterator>
</table>
	<a href="login.jsp"><input type="button" value="�ص���¼ҳ��"/></a>
</div>

  </body>
</html>
