<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>注册</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/font-awesome.css" rel="stylesheet"> 
<link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
<script src="js/wow.min.js"></script>
<script>new WOW().init();</script>
</head>
<body>
	<div class="header">
		<div class="top-header">
			<div class="container">
				<div class="top-header-info">
					<div class="top-header-left wow fadeInLeft animated" data-wow-delay=".5s">
						<p>欢迎，感谢您选择【摇滚乐】保险</p>
					</div>
					<div class="top-header-right wow fadeInRight animated" data-wow-delay=".5s">
						<div class="top-header-right-info">
							<ul>
								<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
								<c:if test="${username==null}">
						<li class="nav-item"><a class="nav-link"
							href="${pageContext.request.contextPath}/login.jsp">请登录</a></li>
					</c:if>
					<c:if test="${username!=null}">
						
					
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> ${username} </a>
							<div class="dropdown-menu" aria-labelledby="navbarDropdown">
								<a class="dropdown-item" href="#">Action</a> <a
									class="dropdown-item" href="#">Another action</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="#">Something else here</a>
							</div></li>
					</c:if>
								<li><a href="register.jsp">修改密码</a></li>
							</ul>
						</div>
					</div>
					</div>
				</div>
			</div>
		</div>
		<div class="bottom-header">
			<div class="container">
				<div class="top-nav wow fadeInRight animated" data-wow-delay=".5s">
					<nav class="navbar navbar-default">
						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav">
								<li><a href="about.jsp">保险主页</a></li>
							</ul>	
							<div class="clearfix"> </div>
						</div>	
					</nav>		
				</div>
			</div>
		</div>
	</div>
	
	<div class="login">
		<div class="container">
			<div class="login-body">
				<div class="login-heading w3layouts">
					<h1>密码修改</h1>
				</div>
				<div class="login-info">
					<form action="${pageContext.request.contextPath}/registServlet" method="post">
						<!--<input type="text" name="idcard" placeholder="身份证号" required="required">-->
						<input type="text" name="username" placeholder="账号" required="required">
						<input type="password" name="password" placeholder="原始密码" required="required">
						<input type="password" name="surepassword" placeholder="新密码" required="required">
						<input type="submit" value="确认" onclick="alert('修改成功')">
						<div class="signup-text">
							<a href="login.jsp">已经拥有账号？立即登录</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	
	<div class="popular agile-info">
		<div class="container">
			<div class="copyright w3l wow fadeInRight animated" data-wow-delay=".5s">
				<p style="text-align:center">版权所有 © 摇滚乐保险（集团）股份有限公司 未经许可不得复制、转载或摘编，违者必究!</p>
				<p style="text-align:center">Copyright © Yaogunyue insurance (group) company of china ,LTD. all rights reserved</p>
				<p style="text-align:center">本网站支持IPv6</p>
			</div>
		</div>
	</div>
</body>	
</html>