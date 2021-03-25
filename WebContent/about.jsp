<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>摇滚乐保险</title>
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
					<c:if test="${username=='YGY'}"><li class="nav-item"><a class="nav-link"
							href="${pageContext.request.contextPath}/register.jsp">请登录</a></li></c:if> 
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
							</div>
							<a href="${pageContext.request.contextPath}/LogoutServlet">退出登录</a>
							</li>
					</c:if>
							
							<!--  <li><a href="login.jsp">登录</a></li>-->
							<li><a href="register.jsp">注册</a></li>
							<li><a href="managermenu.jsp">用户中心</a></li>
							</ul>
						</div>
					</div>
					
				</div>
			</div>
		</div>
		<div class="bottom-header">
			<div class="container">
				<div class="logo wow fadeInDown animated" data-wow-delay=".5s">
					<h1><a href="about.jsp"><img src="images/yaogunyue.png" height="100" width="150" alt="" /></a></h1>
				</div>
				<div class="top-nav wow fadeInRight animated" data-wow-delay=".5s">
					<nav class="navbar navbar-default">
						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav">
								<li><a href="#jiankang" class="active">健康保险</a></li>
								<li><a href="#yiwai" class="active">意外保险</a></li>
								<li><a href="#qiye" class="active">企业保险</a></li>
								<li><a href="#lvxing" class="active">旅行保险</a></li>
							</ul>	
							<div class="clearfix"> </div>
						</div>	
					</nav>		
				</div>
			</div>
		</div>
	</div>
	
		<div class="about-heading w3layouts">
				<br><h2><a id="jiankang">一 &nbsp;健康保险&nbsp;  一</a></h2><br>
				<img src="images/jiankang.png" height="400" width="1000"alt="" />
		</div>
<div>
		<div class="container">
			<div class="information-grids agile-info">
				<div class="col-md-4 information-grid wow fadeInLeft animated"
					data-wow-delay=".5s">
					<div class="information-info">
						<div class="information-grid-img">
							<a href="Man.jsp"><img src="images/pingan.png" alt="" /></a>
						</div>
						<div class="information-grid-info">
							<h4>平安无忧·医疗险</h4>
							<p>专享600万高额保障，以及特有健康大礼包丨¥257起</p>
							
							<a href="Man.jsp"><img src="images/toubao.png" alt="" /></a>
						</div>
					</div>
				</div>
				<div class="col-md-4 information-grid wow fadeInUp animated"
					data-wow-delay=".5s">
					<div class="information-info">
						<div class="information-grid-info">
							<h4>中老年人综合医疗险</h4>
							<p>十二项保障，意外伤害全覆盖丨¥74.5起</p>
							<a href="Old.jsp"><img src="images/toubao.png" alt="" /></a>
						</div>
						<div class="information-grid-img">
							<a href="Old.jsp"><img src="images/zhonglaonian.png" alt="" /></a>
						</div>
					</div>
				</div>
				<div class="col-md-4 information-grid wow fadeInRight animated"
					data-wow-delay=".5s">
					<div class="information-info">
						<div class="information-grid-img">
							<a href="Children.jsp"><img src="images/ertong.png" alt="" /></a>
						</div>
						<div class="information-grid-info">
							<h4>儿童综合医疗险</h4>
							<p>疾病/意外医疗全面保障|¥44.2起</p>
							<a href="Children.jsp"><img src="images/toubao.png" alt="" /></a>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
</div>
	
		<div class="about-heading w3layouts">
				<br><br><br><br><h2><a id="yiwai">一 &nbsp;意外保险&nbsp; 一</a></h2><br>
				<img src="images/yiwai.png" height="400" width="1000"alt="" />
		</div>
<div>
		<div class="container">
			<div class="information-grids agile-info">
				<div class="col-md-4 information-grid wow fadeInLeft animated"
					data-wow-delay=".5s">
					<div class="information-info">
						<div class="information-grid-img">
							<a href="short.jsp"><img src="images/duanqi.png" alt="" /></a>
						</div>
						<div class="information-grid-info">
							<h4>短期综合意外保险</h4>
							<p>短期出行活动必选|¥3.5起</p>
							<a href="short.jsp"><img src="images/toubao.png" alt="" /></a>
						</div>
					</div>
				</div>
				<div class="col-md-4 information-grid wow fadeInUp animated"
					data-wow-delay=".5s">
					<div class="information-info">
						<div class="information-grid-info">
							<h4>平安个人意外伤害险</h4>
							<p>1-3类职业、意外/医疗/交通|¥34起</p>
							<a href="personal.jsp"><img src="images/toubao.png" alt="" /></a>
						</div>
						<div class="information-grid-img">
							<a href="personal.jsp"><img src="images/geren.png" alt="" /></a>
						</div>
					</div>
				</div>
				<div class="col-md-4 information-grid wow fadeInRight animated"
					data-wow-delay=".5s">
					<div class="information-info">
						<div class="information-grid-img">
							<a href="oneyear.jsp"><img src="images/yinian.png" alt="" /></a>
						</div>
						<div class="information-grid-info">
							<h4>一年期意外保险</h4>
							<p>工作生活出行所有意外全保障|¥43.8起</p>
							<a href="oneyear.jsp"><img src="images/toubao.png" alt="" /></a>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
</div>

		<div class="about-heading w3layouts">
				<br><br><br><br><h2><a id="qiye">一  &nbsp;企业保险&nbsp;  一</a></h2><br>
				<img src="images/qiye.png" height="400" width="1000"alt="" />
		</div>
<div>
		<div class="container">
			<div class="information-grids agile-info">
				<div class="col-md-4 information-grid wow fadeInLeft animated"
					data-wow-delay=".5s">
					<div class="information-info">
						<div class="information-grid-img">
							<a href="together.jsp"><img src="images/qiyetuanti.png" alt="" /></a>
						</div>
						<div class="information-grid-info">
							<h4>企业团体综合意外险</h4>
							<p>员工的人身意外、交通全保障|¥25.8/人起</p>
							<a href="together.jsp"><img src="images/toubao.png" alt="" /></a>
						</div>
					</div>
				</div>
				<div class="col-md-4 information-grid wow fadeInUp animated"
					data-wow-delay=".5s">
					<div class="information-info">
						<div class="information-grid-info">
							<h4>团体短期综合意外险</h4>
							<p>短期工作、活动、商务等最佳保障|¥2.7/人起</p>
							<a href="togetherShort.jsp"><img src="images/toubao.png" alt="" /></a>
						</div>
						<div class="information-grid-img">
							<a href="togetherShort.jsp"><img src="images/tuanti.png" alt="" /></a>
						</div>
					</div>
				</div>
				<div class="col-md-4 information-grid wow fadeInRight animated"
					data-wow-delay=".5s">
					<div class="information-info">
						<div class="information-grid-img">
							<a href="togetherTravel.jsp"><img src="images/guonei.png" alt="" /></a>
						</div>
						<div class="information-grid-info">
							<h4>团体国内旅游保险</h4>
							<p>意外、高风险运动、交通全保障|¥1.6/人起</p>
							<a href="togetherTravel.jsp"><img src="images/toubao.png" alt="" /></a>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
</div>


		<div class="about-heading w3layouts">
				<br><br><br><br><h2><a id="lvxing">一  &nbsp;旅行保险&nbsp;  一</a></h2><br>
				<img src="images/lvxing.png" height="400" width="1000"alt="" />
		</div>
<div>
		<div class="container">
			<div class="information-grids agile-info">
				<div class="col-md-4 information-grid wow fadeInLeft animated"
					data-wow-delay=".5s">
					<div class="information-info">
						<div class="information-grid-img">
							<a href="Travel.jsp"><img src="images/jingneizijia.png" alt="" /></a>
						</div>
						<div class="information-grid-info">
							<h4>平安行·境内自驾旅游保险</h4>
							<p>专为自驾旅游设计|¥1.2起</p>
							<a href="Travel.jsp"><img src="images/toubao.png" alt="" /></a>
						</div>
					</div>
				</div>
				<div class="col-md-4 information-grid wow fadeInUp animated"
					data-wow-delay=".5s">
					<div class="information-info">
						<div class="information-grid-info">
							<h4>平安行·境内节假日旅游保险</h4>
							<p>国家法定节假日的旅行保障|¥88起</p>
							<a href="TravelHoliday.jsp"><img src="images/toubao.png" alt="" /></a>
						</div>
						<div class="information-grid-img">
							<a href="TravelHoliday.jsp"><img src="images/jingneijiejia.png" alt="" /></a>
						</div>
					</div>
				</div>
				<div class="col-md-4 information-grid wow fadeInRight animated"
					data-wow-delay=".5s">
					<div class="information-info">
						<div class="information-grid-img">
							<a href="TravelWorld.jsp"><img src="images/quanqiu.png" alt="" /></a>
						</div>
						<div class="information-grid-info">
							<h4>平安行·全球旅行保险</h4>
							<p>27项出境保障多语言国际救援|¥45起</p>
							<a href="TravelWorld.jsp"><img src="images/toubao.png" alt="" /></a>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
</div>
		
		<div class="team w3layouts">
			<div class="container">
				<div class="popular-heading team-heading">
					<h3 class="wow fadeInUp animated" data-wow-delay=".5s">我们的服务</h3>
					<p class="wow fadeInUp animated" data-wow-delay=".5s">【摇滚乐】保险将为您提供安全，便捷，舒适的服务</p>
				</div>
				<div class="team-grids w3l-agile">
					<div class="col-md-4 team-grid wow fadeInLeft animated" data-wow-delay=".5s">
						<img src="images/ba.jpg" alt="" />
						<h4>安全</h4>
						<p>保险提供最安全保障，确保您不受意外打扰。</p>
					</div>
					<div class="col-md-4 team-grid wow fadeInUp animated" data-wow-delay=".5s">
						<img src="images/yy.jpg" alt="" />
						<h4>便捷</h4>
						<p>保险提供网上预约服务，以便您到达店后快速办理。</p>
					</div>
					<div class="col-md-4 team-grid wow fadeInRight animated" data-wow-delay=".5s">
						<img src="images/fw.jpg" alt="" />
						<h4>专业</h4>
						<p>保险所有服务人员均受过专业培训，为您提供最专业舒适的服务。</p>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>

	<div class="footer agileits">
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