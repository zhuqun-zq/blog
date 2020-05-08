<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="<%=basePath%>/css/bootstrap.min.css"
	charset="utf-8" />
<script src="<%=basePath%>/js/jquery.min.js"></script>
<script src="<%=basePath%>/js/bootstrap.min.js"></script>
<title>登陆</title>
</head>
<%-- <body background="<%=basePath%>/picture/loginBackground.jpg"> --%>
<body>
	<div class="container">
		<div >
			<div class="col-md-4"></div>
			<div class="col-md-4">
				<h3 class="text-center">人生旅人</h3>
				<form role="form" style="text-align: center;" action='login'
					method='get'>
					<div class="form-group">

						<label style="float: left;" for="exampleInputEmail1"> 用户名
						</label> <input type="text" class="form-control" id="userName"
							name='userName' " />
					</div>
					<div class="form-group">

						<label style="float: left;" for="exampleInputPassword1">
							密码 </label> <input id="password" type='password' name='password'
							class="form-control" />
					</div>
					<button type="submit" name='sumbit' class="btn btn-primary">登陆</button>
					<br>
					<div class="btn-group btn-group-md" role="group">
						<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">注册</button>
						<button class="btn btn-secondary" type="button">忘记密码</button>
					</div>
				</form>
			</div>
			<div class="col-md-4"></div>
		</div>

		<!-- 模态框 -->
		<div class="modal fade" id="myModal">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">

					<!-- 模态框头部 -->
					<div class="modal-header">
						<h4 class="modal-title">模态框头部</h4>
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>

					<!-- 模态框主体 -->
					<div class="modal-body">模态框内容..</div>

					<!-- 模态框底部 -->
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">关闭</button>
					</div>

				</div>
			</div>
		</div>
	</div>

</body>
</html>