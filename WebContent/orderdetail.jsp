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
		<nav nav class="navbar navbar-light" style="background-color: #e3f2fd;text-align: left;color:blue">
			<p><h2>·订单确认</h2></p>
		</nav>

		<div class="row" style="margin-top: 10px">
		    
			<div class="col-md">
				<div class="card">
					<div class="card-body">
						<hr>
						<ul class="list-group list-group-flush">
							<li class="list-group-item" style="text-align: center;">投保人：${Name}</li>
							<li class="list-group-item" style="text-align: center;">投保起期：${Start_time}</li>
							<li class="list-group-item" style="text-align: center;">投保止期：${End_time}</li>
							<li class="list-group-item" style="text-align: center;">证件类型：${Cardstyle}</li>
							<li class="list-group-item" style="text-align: center;">证件号：${ID_card}</li>
							<li class="list-group-item" style="text-align: center;">出身日期：${Birth_time}</li>
							<li class="list-group-item" style="text-align: center;">手机号：${Phone}</li>
							<li class="list-group-item" style="text-align: center;">常住地址：${Address}</li>
							<li class="list-group-item" style="text-align: center;">保费：${Number}元</li>
							<li class="list-group-item" style="text-align: center;">受益人：${Beneficiary}</li>
						</ul>
						
						<div style="position:relative;float:left"><a class="btn btn-primary" href="paySuccess.jsp" role="button">扫码支付</a></div>
						<div style="height:100px;width:100px;float:left">
						<a href="paySuccess.jsp"><img alt="" src="images/QR.png" style="height:100px;width:100px;http-equiv:refresh;content:3;URL=http://localhost:8080/YaogunyueInsurance/about.jsp"></a>
						</div>
						<div style="position:relative;float:right"><a class="btn btn-primary" href="order.jsp" role="button">修改订单</a></div>
						
						
					</div>
				</div>
			</div>

		</div>
	</div>
</body>
</html>