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
<script src="<%=basePath%>/js/homepage.js"></script>
<title>首页</title>
</head>
<body>

	<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<ul class="nav">
				<li class="nav-item">
					<a class="nav-link active" href="#">主页</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#">技术</a>
				</li>
				<li class="nav-item">
					<a class="nav-link disabled" href="#">生活</a>
				</li>
				<li class="nav-item dropdown ml-md-auto">
					 <a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown">登陆者</a>
					<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
						 <a class="dropdown-item" href="#">用户管理</a> <a class="dropdown-item" href="#">注销</a> <a class="dropdown-item" href="#">其他操作</a>
						<div class="dropdown-divider">
						</div> <a class="dropdown-item" href="#">Separated link</a>
					</div>
				</li>
			</ul>
		</div>
	</div>
	<div class="row">
		<div class="col-md-3">
			<div class="media">
				<img class="mr-3" alt="Bootstrap Media Preview" src="https://www.layoutit.com/img/sports-q-c-64-64-8.jpg" />
				<div class="media-body">
					<h5 class="mt-0">
						Nested media heading
					</h5> Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.
					<div class="media mt-3">
						 <a class="pr-3" href="#"><img alt="Bootstrap Media Another Preview" src="https://www.layoutit.com/img/sports-q-c-64-64-2.jpg" /></a>
						<div class="media-body">
							<h5 class="mt-0">
								Nested media heading
							</h5> Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="col-md-6">
			<div class="row">
				<div class="col-md-12">
				主页内容	
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<nav>
						<ul class="pagination">
							<li class="page-item">
								<a class="page-link" href="#">上一页</a>
							</li>
							<li class="page-item">
								<a class="page-link" href="#">1</a>
							</li>
							<li class="page-item">
								<a class="page-link" href="#">2</a>
							</li>
							<li class="page-item">
								<a class="page-link" href="#">3</a>
							</li>
							<li class="page-item">
								<a class="page-link" href="#">4</a>
							</li>
							<li class="page-item">
								<a class="page-link" href="#">5</a>
							</li>
							<li class="page-item">
								<a class="page-link" href="#">下一页</a>
							</li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
		<div class="col-md-3">
			<div class="list-group">
				 <a href="#" class="list-group-item list-group-item-action active" data-toggle="modal" data-target="#myModal">这里可以放未来的计划</a>
				
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
		这里是页脚
		</div>
	</div>
	
	
	<!-- 模态框 -->
  <div class="modal fade" id="myModal">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
   
        <!-- 模态框头部 -->
        <div class="modal-header">
          <h4 class="modal-title">模态框头部</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
   
        <!-- 模态框主体 -->
        <div class="modal-body">
          <label style="float: left;" for="planTitle"> 计划名称</label>
          <input type="text" class="form-control" id="planTitle" name='planTitle' " />
          <label style="float: left;" for="planContext"> 计划内容</label>
          <input type="text" class="form-control" id="planContext" name='planContext' " />
        </div>
   
        <!-- 模态框底部 -->
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">取消</button>
          <button type="button" class="btn btn-secondary" data-dismiss="modal" onclick="smbmitPlan()">保存</button>
        </div>
   
      </div>
    </div>
  </div>
</div>
</body>
</html>