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
 <link rel="stylesheet" href="<%=basePath%>/css/bootstrap.css"
	charset="utf-8" />
<script src="<%=basePath%>/js/jquery.min.js"></script>
<script src="<%=basePath%>/js/popper.min.js"></script>
<script src="<%=basePath%>/js/bootstrap.min.js"></script>
<script src="<%=basePath%>/js/login.js"></script>
<title>登陆</title>
</head>
<body>
  
  <div class="container">
	<div class="row clearfix">
		<div class="col-md-4 column">
			 <a id="modal-460372" href="#register" role="button" class="btn" data-toggle="modal">注册</a>
			
			<div class="modal fade" id="register" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							 <label style="float: left;" > 注册窗口</label>
							 <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
						</div>
						<div class="modal-body">
							 <label style="float: left;" for="planTitle"> 用户名</label>
          					<input type="text" class="form-control" id="addUserName" name='userName' " />
          					<label style="float: left;" for="planContext"> 密码</label>
          					<input type="text" class="form-control" id="addPassword" name='password' " />
          					<label style="float: left;" for="planContext"> 重复密码</label>
          					<input type="text" class="form-control" id="addPasswordAgain" name='password' " />
						</div>
						<div class="modal-footer">
							 <button type="button" class="btn btn-default" data-dismiss="modal">取消</button> <button type="button" class="btn btn-primary" onclick="addNewUser()">保存</button>
						</div>
					</div>
					
				</div>
				
			</div>
			
		</div>
		<div class="col-md-4 column">
			<form role="form" style="text-align: center;" action='login' method='get'>
				<div class="form-group">
					 <label for="userName">用户名</label><input  type="text" class="form-control" id="userName" name="userName" />
				</div>
				<div class="form-group">
					 <label for="password">密码</label><input id="password" type='password' name='password' class="form-control" />
				</div>
				 <button type="submit" name='sumbit' class="btn btn-primary">登录</button>
			</form>
		</div>
		<div class="col-md-4 column">
			 <a id="modal-150282" href="#modal-container-150282" role="button" class="btn" data-toggle="modal">触发遮罩窗体</a>
			
			<div class="modal fade" id="modal-container-150282" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							 <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
							<h4 class="modal-title" id="myModalLabel">
								标题
							</h4>
						</div>
						<div class="modal-body">
							内容...
						</div>
						<div class="modal-footer">
							 <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button> <button type="button" class="btn btn-primary">保存</button>
						</div>
					</div>
					
				</div>
				
			</div>
			
		</div>
	</div>
</div>
</body>
</html>