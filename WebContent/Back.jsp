<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

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
	<div class="container">
		<nav nav class="navbar navbar-light"
			style="background-color: #e3f2fd; text-align: left; color: blue">
			<p>
			<h2>·保险理赔</h2>
			</p>
		</nav>

		<div class="row" style="margin-top: 10px">

			<div class="col-md">
				<div class="card">
					<div class="card-body">
						<hr>
						<ul class="list-group list-group-flush">

							<li>姓&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp名：<input type="text"></li>
							<p></p>
							<li>保险起期：<input type="date" name="Start_time" value="" placeholder="yyyy-mm-dd" /></li>
							<p></p>
							<li>保险止期：<input type="date" name="Start_time" value="" placeholder="yyyy-mm-dd" /></li>
							<p></p>
							<li>身份证号：<input type="text"></li>
							<p></p>
							<li>保险单号：<input type="text"></li>
						</ul>
						<p> </p>
						<p> </p>
						<p> </p>
						<p> </p>
						<div>
							<a class="btn btn-primary" href="order.jsp" role="button">申请理赔</a>
						</div>


					</div>
				</div>
			</div>

		</div>
	</div>
</body>
</html>