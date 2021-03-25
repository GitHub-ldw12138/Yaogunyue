<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
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
	<div class="container">
		<div class="row">
			<img alt="" src="images/yaogunyue.png"
				style="height: 60px; width: 100px"><label
				style="font-size: 24px">摇滚乐保险|</label><label>支付中心</label>
		</div>
		<div class="row">
			<div class="col-3"></div>
			<div class="col-6">
				<div class="col-md">
					<div class="card">
						<div class="card-body">
							<div style="text-align: center">
								<img alt="" src="images/pay.png"
									style="height: 100px; width: 100px;">
							</div>
							<div style="text-align: center">支付成功</div>
							<div style="font-size:12px;text-align: center">
								<%
									Date d = new Date();
									SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
									String now = df.format(d);
								%>

								支付时间：<%=now%>
							</div>
							<hr>
							<ul class="list-group list-group-flush">
								<li class="list-group-item" style="text-align: center;">收款方：摇滚乐保险真是验证一年期收费</li>
								<li class="list-group-item" style="text-align: center;">应付金额：${Number}元</li>
							</ul>
							<a class="btn btn-primary" href="about.jsp" role="button">返回首页</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>