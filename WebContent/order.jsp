<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>订单结算</title>
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
<style>
.demo {
	width: 100px;
	height: 100px;
	background: #eef2f3;
	margin: 50px;
	overflow: hidden;
}

.padding-box {
	-moz-transform: rotate(45deg);
	-webkit-transform: rotate(45deg);
	-o-transform: rotate(45deg);
	-ms-transform: rotate(45deg);
	transform: rotate(45deg);
}

.a1 {
	width: 100px;
	height: 100px;
	overflow: hidden;
	background: url(images/3.jpg) no-repeat;
	-moz-transform: rotate(-45deg);
	-webkit-transform: rotate(-45deg);
	-o-transform: rotate(-45deg);
	-ms-transform: rotate(-45deg);
	transform: rotate(-45deg);
}

.a2 {
	width: 100px;
	height: 100px;
	overflow: hidden;
	background: url(images/3.jpg) no-repeat;
	-moz-transform: rotate(-45deg);
	-webkit-transform: rotate(-45deg);
	-o-transform: rotate(-45deg);
	-ms-transform: rotate(-45deg);
	transform: rotate(-45deg);
}

.one, .two {
	float: left
}
</style>
</head>
<body>
	<%
		String name = (String) session.getAttribute("username");
		if (name == null)
			response.sendRedirect("login.jsp");
	%>



	<form action="${pageContext.request.contextPath}/orderServlet"
		method="post">
		<div class="container-fluid">
				<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
					<a class="navbar-brand" href="#">${name}</a>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>

					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav mr-auto">
							<li class="nav-item active"><a class="nav-link" href="#">${time}
									<span class="sr-only">(current)</span>
							</a></li>
							<li class="nav-item active"><a class="nav-link" href="#">${major}
									<span class="sr-only">(current)</span>
							</a></li>
							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
								role="button" data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false"> Dropdown </a>
								<div class="dropdown-menu" aria-labelledby="navbarDropdown">
									<a class="dropdown-item" href="#">Action</a> <a
										class="dropdown-item" href="#">Another action</a>
									<div class="dropdown-divider"></div>
									<a class="dropdown-item" href="#">Something else here</a>
								</div></li>
							<li class="nav-item"><a class="nav-link disabled" href="#">Disabled</a>
							</li>
						</ul>

					</div>
				</nav>
			</div>
		<div class="container-fluid" style="border: none">
			
			<div class="one" style="border: 1px solid #99CCCC; width: 80%;">

				<div class="row" style="width: 100%; margin-left: 0.1%">
					<!-- <div class="col-2"></div> -->
					<div class="col"
						style="background-color: #99CCCC; border: none; height: 50px; margin-top: none;">

					</div>
				</div>

				<div class="row"
					style="border: 1px solid #99CCCC; width: 800px; margin-left: 2.5%; margin-top: 25px">
					<div class="col-2"
						style="background-color: #99CCCC; border: 1px solid #CCFFFF; width: 800px;">
						<div style="position: absolute; top: 35%;">
							<div style="position: absolute; left: 40%">
								<p
									style="font-size: 30px; font-family: helvetica, verdana, sans-serif;">1</p>
							</div>
							<div style="margin-top: 50px">
								<p style="font-size: 24px">订单明细</p>
							</div>
						</div>
					</div>
					<div class="col">
						<div class="title">
							<label><p style="font-size: 24px; color: black">|
									填写保险人信息</p></label>
						</div>
						<div class="Policy-holder" style="margin-top: 10px; width: 200px">
							<label id="Policy-holder" style="height: 20px; font-size: 16px">投保人：</label>
							<input type="Policy-holder" class="form-control" id="name"
								name="Name" style="width: 150px; height: 25px">
						</div>
						<br>

						<div class="form-group">
							<label for="inputAddress">保险起期：</label> <input type="date"
								name="Start_time" value="" placeholder="yyyy-mm-dd" />
						</div>
						<div class="form-group">
							<label for="inputAddress">保险终期：</label> <input type="date"
								name="End_time" value="" placeholder="yyyy-mm-dd" />
						</div>

					</div>
					<div class="col">
						<div id="Insueance-costs">
							<label>保费：
								<p style="font-size: 24px; color: red">${Number}元</p>
							</label>
						</div>
						<div>

							<button type="submit" class="btn btn-primary"
								style="background-color: blue">立即支付</button>

						</div>
						<div style="margin-top: 10px">
							<label for="inputState">选择支付方式</label> <select id="inputState"
								class="form-control">
								<option selected>支付宝</option>
								<option>微信</option>
								<option>银行卡</option>
							</select>
						</div>
					</div>
				</div>
				<div class="row"
					style="border: 1px solid #99CCCC; width: 800px; margin-left: 2.5%; margin-top: 25px">
					<div class="col-2"
						style="background-color: #99CCCC; border: 1px solid #CCFFFF; width: 800px;">
						<div style="position: absolute; top: 35%">
							<div style="position: absolute; left: 40%">
								<p
									style="font-size: 30px; font-family: helvetica, verdana, sans-serif;">2</p>
							</div>
							<div style="margin-top: 50px">
								<p style="font-size: 24px">投保人</p>
							</div>
						</div>
					</div>
					<div class="col-8">
						<br>
						<div style="margin-top: 10px; width: 500px">
							<label for="inputState">证件类型:</label> <select id="inputState"
								type="text" style="width: 150px" name="Cardstyle">
								<option selected>二代身份证</option>
								<option>护照</option>
								<option>港澳回乡证和台胞证</option>
							</select> <input type="text" name="ID_card" value="" placeholder="18位数字" />
						</div>
						<div class="form-group" style="margin-top: 5px">
							<label for="inputAddress"> 出生日期：</label> <input type="date"
								name="Birth_time" value="" placeholder="yyyy-mm-dd" /> <label
								for="inputAddress" style="margin-left: 10px;"> 性别： </label> <input
								class="form-check-input"
								style="margin-left: 1px; margin-top: 10px" type="radio"
								name="Gender" id="man" value="男" checked> <label
								class="form-check-label" for="man" style="margin-left: 15px">
								男 </label> <input class="form-check-input" type="radio" name="Gender"
								id="feman" value="女"
								style="margin-left: 1px; margin-top: 10px"> <label
								class="form-check-label" for="feman" style="margin-left: 15px">
								女 </label>

						</div>
						<div class="form-group">
							<label for="inputstyle">手机号码：</label> <input type="text"
								name="Phone" value="" placeholder="11位数字" />
						</div>
						<div class="form-group">
							<label for="inputstyle">常住地址：</label> <input type="text"
								name="Address" value="" placeholder="--省--市--县" />
						</div>
					</div>
				</div>
				<div class="row"
					style="border: 1px solid #99CCCC; width: 800px; margin-left: 2.5%; margin-top: 25px">
					<div class="col-2"
						style="background-color: #99CCCC; border: 1px solid #CCFFFF; width: 800px;">
						<div style="position: absolute; top: 35%">
							<div style="position: absolute; left: 40%">
								<p
									style="font-size: 30px; font-family: helvetica, verdana, sans-serif;">3</p>
							</div>
							<div style="margin-top: 50px">
								<p style="font-size: 24px">受益人</p>
							</div>
						</div>
					</div>
					<div class="col">
						<div style="height: 200px">
							<label for="inputstyle" name="legal1"
								style="margin-top: 12.5%; margin-left: 40%">受益人：</label><input
								type="text" name="Beneficiary">
						</div>


					</div>
				</div>
			</div>
		</div>
	</form>
	<div class="two"
		style="width: 19%; border: 1px solid #cccccc; margin-left: 0.75%; height: 876px;">
		<div class="custom-service-txt">
			<p class="c">
				<span class="tag" style="font-size: 24px; color: red">高</span><span
					class="custom-service-words">重大疾病高达50万保额</span>
			</p>
			<p class="pt15 c">
				<span class="tag" style="font-size: 24px; color: red">广</span><span
					class="custom-service-words">涵盖30项重大疾病含白血病</span>
			</p>
			<p class="pt15 c">
				<span class="tag" style="font-size: 24px; color: red">全</span><span
					class="custom-service-words" style="float: none;">专属咨询服务及三甲医院重疾诊疗,绿色VIP通道服务</span>
			</p>
		</div>
		<div class="mt20">
			<!--常见问题-->
			<div class="question-area" id="question-area-wrap">
				<h5 class="question-area-tit c plr18">
					<span class="fl">常见问题</span>
				</h5>
				<ul class="question-list" style="font-size: 12px;">
					<li>
						<dl class="quote-question">
							<dt>
								<a class="ch" title="投保人必须是被保险人的父母或法定监护人吗？" otype="adtext"
									adtextArea="投保人必须是被保险人的父母或法定监护人吗？">投保人必须是被保险人的父母或法定监护人吗？</a>
							</dt>
							<dd class="answer-txt" style="font-size: 12px;">是的。本产品的投保人必须是被保险人的父母或法定监护人。</dd>
						</dl>

						<dl class="quote-question">
							<dt>
								<a class="ch" title="该保险一年后到期，我怎么续保，使我的保障不间断呢？" otype="adtext"
									adtextArea="该保险一年后到期，我怎么续保，使我的保障不间断呢？">该保险一年后到期，我怎么续保，使我的保障不间断呢？</a>
							</dt>
							<dd class="answer-txt">我们会在保单到期前以邮件、短信等方式提示您续保，请一定留意这些讯息，以免错过续保时间。</dd>
						</dl>

						<dl class="quote-question">
							<dt>
								<a class="ch" title="什么是等待期？otype=" adtext" adtextArea="什么是等待期？">什么是等待期？</a>
							</dt>
							<dd class="answer-txt">指合同在生效的指定时期内，即使发生保险事故，受益人也不能获得保险赔偿，这段时期称为等待期。等待期是为了防止投保人隐瞒高风险因素而投保以获得保险金的行为。该保险的等待期为60天。</dd>
						</dl>

						<dl class="quote-question">
							<dt>
								<a class="ch" title="被保险人没有身份证号码，证件号码应怎样填写？" otype="adtext"
									adtextArea="被保险人没有身份证号码，证件号码应怎样填写？">被保险人没有身份证号码，证件号码应怎样填写？</a>
							</dt>
							<dd class="answer-txt">如果被保险人（包括连带被保险人）中有未成年人，如被保险人有身份证，请选择证件类型为“身份证”，填写身份证号码，如还未办理身份证，可以查看其户口本中的身份证号码填入，如未办户口可选择证件类型为“其他”，填写出生日期，如20100803。但被保险人必须具有证明其身份的有效证件方可投保。有效证件包括身份证、户口本、出生证明。</dd>
						</dl>

						<dl class="supplement-question">
							<dt>
								<a class="ch" title="投保人必须是被保险人的父母或法定监护人吗？" otype="adtext"
									adtextArea="投保人必须是被保险人的父母或法定监护人吗？">投保人必须是被保险人的父母或法定监护人吗？</a>
							</dt>
							<dd class="answer-txt">是的。本产品的投保人必须是被保险人的父母或法定监护人。</dd>
						</dl>

					</li>
				</ul>
			</div>

			<!--常见问题-->
		</div>
	</div>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS 
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
-->
</body>

</html>