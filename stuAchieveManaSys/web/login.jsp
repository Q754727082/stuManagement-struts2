<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta http-equiv="content-type" content="text/html;charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>login</title>

<link rel="stylesheet" type="text/css" href="css/login.css">

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/vector.js"></script>
<script type="text/javascript" src="js/login.js" charset="utf-8"></script>

</head>
<body onload="createCode()">

<div id="container">
	<div id="output">
		<div class="containerT">
			<h1>用户登录</h1>
			<form class="form" id="entry_form" action="${pageContext.request.contextPath}/user_login.action" method="post" onsubmit="return but()">
				<input id="name" name="user.name"type="text" placeholder="用户名" id="entry_name" >
				<input id="password" name="user.password"type="password" placeholder="密码" id="entry_password">
				验证码：<input type="text" id="t1" name="u"placeholder="验证码"size="5"/>
      							<span id="discode"onclick="createCode()"></span><br/>
      						
				<button type="submit" id="entry_btn">登录</button><div id="message1"></div><br/><div id="message2"></div><br/>
				<button id="register"type="button">注册</button><br/>
				<c:if test="${!empty param.err }">
							<c:choose>
								<c:when test="${param.err=='-1' }">
									<span style='color:#ff0000'>用户身份验证不通过!请输入正确账号密码！</span>
								</c:when>
								<c:otherwise>
									<span style='color:#ff0000'>其他问题!</span>
								</c:otherwise>
							</c:choose>
						</c:if>
				<div id="prompt" class="prompt"></div>
			</form>
		</div>
	</div>
</div>

<script type="text/javascript">
	$(document).ready(function(){
  			$("#register").click(function(){
    		window.location.href="register.jsp";
  	});
});
    $(function(){
        Victor("container", "output");   //登录背景函数
        $("#entry_name").focus();
        $(document).keydown(function(event){
            if(event.keyCode==13){
                $("#entry_btn").click();
            }
        });
        $("#name").change(function(){
    		var val=$(this).val();
    		val=$.trim(val);
    		if(val!=""){
    		var url="user_login_checkName.action";
    		var args={"name":val};
    		$.post(url,args,function(data){
    		$("#message1").html(data);
    		});
    		}
    	});
    	 $("#password").change(function(){
    		var val=$(this).val();
    		val=$.trim(val);
    		if(val!=""){
    		var url="user_login_checkPassword.action";
    		var args={"password":val};
    		$.post(url,args,function(data){
    		$("#message2").html(data);
    		});
    		}
    	});
    });
    
   
</script>
</body>
</html>