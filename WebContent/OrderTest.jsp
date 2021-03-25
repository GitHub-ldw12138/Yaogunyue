<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<!--  jQuery first, then Popper.js, then Bootstrap JS  -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<form action="" id="myform" method="post">
		<div class="result-content">
			<div style="text-align: left">
				<p>
				<h3>我的订单</h3>
				</p>
			</div>
			<table class="result-tab" width="80%" border="1px" margin="none">
				<tr>
					<th>保险起期</th>
					<th>保险终期</th>
					<th>证件类型</th>
					<th>证件号码</th>
					<th>常住地址</th>
					<th>出生日期</th>
					<th>电话号码</th>
					<th>受益人</th>
					<th>订单号</th>
				</tr>

				<tr>

					<td>${Start_time}</td>
					<td>${End_time}</td>
					<td>${Cardstyle}</td>
					<td>${ID_card}</td>
					<td>${Birth_time}</td>
					<td>${Birth_time}</td>
					<td>${Phone}</td>
					<td>${Beneficiary}</td>
					<td>${Id}</td>
				</tr>
			</table>
		</div>
	</form>

</body>
</html>