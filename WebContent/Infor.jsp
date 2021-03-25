<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title>个人中心</title>
<link rel="stylesheet" href="plugins/layui/css/layui.css" media="all">
<link rel="stylesheet" type="text/css"
	href="http://cdn.bootcss.com/font-awesome/4.6.0/css/font-awesome.min.css">
<link rel="stylesheet" href="build/css/app.css" media="all">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<!-- 总容器 -->
	<div class="container-fluid">
		<nav nav class="navbar navbar-light"
			style="background-color: #e3f2fd; text-align: left; color: blue">
			<p>
			<h3>个人信息</h3>
			</p>
		</nav>

		<div class="row" style="margin-top: 10px">
			<div class="col-2"></div>

			<div class="col-md">
				<div class="card">
					<div class="card-body">
						<hr>
						<ul class="list-group list-group-flush">

							<li>姓&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp名：${Name}</li>
							<p>&nbsp</p>
							<li>性别：${Gender}</li>
							<p>&nbsp</p>
							<li>身份证号：${ID_card}</li>
							<p>&nbsp</p>
							<li>出身日期：${Birth_time}</li>
							<p>&nbsp</p>
							<li>电话号码：${Phone}</li>
						</ul>
						<p></p>
						<p></p>
						<p></p>
						<p></p>


					</div>
				</div>
			</div>

		</div>
	</div>

</body>
</html>