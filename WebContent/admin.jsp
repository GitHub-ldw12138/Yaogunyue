<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>摇滚乐保险</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript">
	
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 



</script>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/font-awesome.css" rel="stylesheet">
<link href="css/animate.css" rel="stylesheet" type="text/css"
	media="all">
<script src="js/wow.min.js"></script>
<script>
	new WOW().init();
</script>
<!-- <style type="text/css">
.menubar {
	line-height: 24px;
}

.menubar .menuend {
	clear: both;
}

.menuitem {
	background: #fff;
	border: 1px solid #c00;
	position: relative;
	float: left;
	margin-right: 1em;
}

.menuitem .submenu {
	background: #ccc;
	border: 1px solid #00c;
	position: absolute;
	top: 25px;
	left: -1px;
	width: 5em;
}
/** 下面的控制显示和隐藏 **/
.menuitem .submenu {
	display: none;
}

.menuitem:hover .submenu {
	display: block;
}
</style> -->
</head>
<body>
	<div class="header">
		<div class="top-header">
			<div class="container">
				<div class="top-header-info">
					<div class="top-header-left wow fadeInLeft animated"
						data-wow-delay=".5s">
						<p>欢迎，感谢您选择【摇滚乐】保险</p>
					</div>
					<div class="top-header-right wow fadeInRight animated"
						data-wow-delay=".5s">
						<div class="top-header-right-info">
							<ul>
								<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

								<c:if test="${username==null}">
									<li class="nav-item"><a class="nav-link"
										href="${pageContext.request.contextPath}/login.jsp">请登录</a></li>
								</c:if>
								<c:if test="${username=='YGY'}">
									<li class="nav-item"><a class="nav-link"
										href="${pageContext.request.contextPath}/register.jsp">请登录</a></li>
								</c:if>
								<c:if test="${username!=null && username!=YGY}">


									<li class="nav-item dropdown"><a
										class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
										role="button" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false"> ${username} </a>
										<div class="dropdown-menu" aria-labelledby="navbarDropdown">
											<a class="dropdown-item" href="#">Action</a> <a
												class="dropdown-item" href="#">Another action</a>
											<div class="dropdown-divider"></div>
											<a class="dropdown-item" href="#">Something else here</a>
										</div> <a href="${pageContext.request.contextPath}/LogoutServlet">退出登录</a>
									</li>
								</c:if>

								<!--  <li><a href="login.jsp">登录</a></li>-->
								<li><a href="register.jsp">注册</a></li>
							</ul>
						</div>
					</div>

				</div>
			</div>
		</div>
		<div class="bottom-header">
			<div class="container">
				<div class="logo wow fadeInDown animated" data-wow-delay=".5s">
					<h1>
						<a href="about.jsp"><img src="images/yaogunyue.png"
							height="100" width="150" alt="" /></a>
					</h1>
				</div>
				<div class="top-nav wow fadeInRight animated" data-wow-delay=".5s">
					<nav class="navbar navbar-default">
						<div class="collapse navbar-collapse"
							id="bs-example-navbar-collapse-1" style="dispaly:block">
							<ul class="nav navbar-nav">
								<li><a href="#jiankang" class="active">用户信息调整</a></li>
								<li><a href="#yiwai" class="active">商品更新</a></li>
								<li><a href="#qiye" class="active">保险撤消</a></li>
								<li><a href="#lvxing" class="active">系统维护</a></li>
							</ul>
							<div class="clearfix" style="display:hover none"></div>
						</div>
					</nav>
				</div>
			</div>
		</div>
	</div>
	<div class="about-heading w3layouts" style="float: left; width: 24%">
		<br>
		<h3>
			<a id="jiankang">一 &nbsp;用户信息调整&nbsp; 一</a>
		</h3>
		<br> <img src="images/users.png" height="400" alt="" />
	</div>
	<div class="about-heading w3layouts" style="float: left; width: 24%">
		<br>
		<h3>
			<a id="yiwai">一 &nbsp;商品更新&nbsp; 一</a>
		</h3>
		<br> <img src="images/update.png" height="400" alt="" />
	</div>
	<div class="about-heading w3layouts" style="float: left; width: 24%">
		<br>
		<h3>
			<a id="yiwai">一 &nbsp;保险撤销&nbsp; 一</a>
		</h3>
		<br> <img src="images/undo.png" height="400" alt="" />
	</div>
	<div class="about-heading w3layouts" style="float: left; width: 24%">
		<br>
		<h3>
			<a id="yiwai">一 &nbsp;系统维护&nbsp; 一</a>
		</h3>
		<br> <img src="images/maintain.png" height="400" alt="" />
	</div>
	<!-- <div class="menubar">
		<div class="menuitem">
			<div>菜单1</div>
			<div class="submenu">
				<div>子菜单1</div>
				<div>子菜单2</div>
			</div>
		</div>
		<div class="menuitem">
			<div>菜单2</div>
			<div class="submenu">
				<div>子菜单1</div>
				<div>子菜单2</div>
				<div>子菜单3</div>
			</div>
		</div>
		<div class="menuend"></div>
	</div>
	<p>
		lsjflsjlajlsa;djflqjwwlejrflsjdlfjwqoo;lnsdl;fgnsl;rjwjeflsdjfljl;jfowei
	</p> -->
</body>
</html>