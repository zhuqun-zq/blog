<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="<%=basePath%>js/layui.js"></script>
<script src="<%=basePath%>js/login.js"></script>
<link href="<%=basePath%>css/layui.css" type="text/css" /> 
<title>登陆</title>
</head>
<body>
<form class='layui-form' action='login' method='get'>
	<div class='mainInformation'>
		<span>用户名</span><input type='' name='userName'/>
		<span>密码</span><input type='password' name='password'/>
	</div>
	<div class='submit'>
		<input type='submit' name='sumbit' value='登陆'/>
	</div>
</form>
</body>
</html>