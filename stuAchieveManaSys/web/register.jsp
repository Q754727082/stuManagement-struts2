<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>注册页面</title>
    <style type="text/css">
    #center{margin-left:500px;margin-top:150px;}
    body{background-image:url(img/beauty.jpg);}
    </style>
      <script type="text/javascript" src="js/jquery.min.js"></script>
    
  </head>

  <body>
	<h1 align="center" style="color:red;">注册用户</h1>
  <div id="center">
       <form action="${pageContext.request.contextPath}/user_register.action" method="post"> 
    用户名:<input type="text" id="name" name="user.name"/> <br/><br/>   <div id="message"></div>
    密&nbsp;&nbsp;码:<input type="password" name="user.password"/><br/><br/>
    手机号:<input type="text" name="user.phone"/><br/><br/>
   邮&nbsp;&nbsp;箱:<input type="text" name="user.email"/><br/><br/>
    <input type="submit" value="注册"/>
    </div>
    </form>
    <script type="text/javascript">
    $(function(){
    	$("#name").change(function(){
    		var val=$(this).val();
    		val=$.trim(val);
    		if(val!=""){
    		var url="user_register_check.action";
    		var args={"name":val};
    		$.post(url,args,function(data){
    		$("#message").html(data);
    		});
    		}
    	});
    });
    </script>
  </body>
</html>
