<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="model.UserInfo"%>
<%@ page import="java.sql.Date"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<%
	String path = request.getContextPath();
	UserInfo userinfo = new UserInfo();
	if (request.getAttribute("info") != null) {
		userinfo = (UserInfo) request.getAttribute("info");
	}
	int id = userinfo.getId();
	int sex = userinfo.getSex();
	String gender = "";
	if (sex == 0) {
		gender = "未知";
	} else if (sex == 1) {
		gender = "男";
	} else if (sex == 2) {
		gender = "女";
	}

	String email = userinfo.getEmail();
	String nickname = userinfo.getNickname();
	Date birthday = userinfo.getBirthday();
	String area = userinfo.getArea();
%>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title><%=nickname%>'s UserCenter</title>
<!-- load stylesheets -->
<!-- jQuery -->


<script src="/changyoup/changyoup/js/jquery.min.js"></script>
<!-- jQuery Easing -->
<script src="/changyoup/changyoup/js/jquery.easing.1.3.js"></script>
<!-- Bootstrap -->
<script src="/changyoup/changyoup/js/bootstrap.min.js"></script>
<!-- Waypoints -->
<script src="/changyoup/changyoup/js/jquery.waypoints.min.js"></script>
<!-- Stellar -->
<script src="/changyoup/changyoup/js/jquery.stellar.min.js"></script>
<!-- Superfish -->
<script src="/changyoup/changyoup/js/hoverIntent.js"></script>
<script src="/changyoup/changyoup/js/superfish.js"></script>

<!-- Main JS -->
<script src="/cahngyoup/changyoup/js/main.js"></script>
<!-- Facebook and Twitter integration -->
<meta property="og:title" content="" />
<meta property="og:image" content="" />
<meta property="og:url" content="" />
<meta property="og:site_name" content="" />
<meta property="og:description" content="" />
<meta name="twitter:title" content="" />
<meta name="twitter:image" content="" />
<meta name="twitter:url" content="" />
<meta name="twitter:card" content="" />

<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="favicon.ico">

<!-- <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'> -->

<!-- Animate.css -->
<link rel="stylesheet" href="/changyoup/changyoup/css/animate.css">
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet" href="/changyoup/changyoup/css/icomoon.css">
<!-- Bootstrap  -->
<link rel="stylesheet" href="/changyoup/changyoup/css/bootstrap.css">
<!-- Superfish -->
<link rel="stylesheet" href="/changyoup/changyoup/css/superfish.css">

<link rel="stylesheet" href="/changyoup/changyoup/css/style.css">
<link rel="stylesheet" href="/changyoup/changyoup/css/login.css">

<link rel="stylesheet" href="/changyoup/changyoup/css/Usercenter.css" rel="stylesheet"
	type="text/css">
<!-- Modernizr JS -->
<script src="/changyoup/changyoup/js/modernizr-2.6.2.min.js"></script>
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

</head>
<%
	int uid = 0;
	if (session.getAttribute("uid") != null) {
		uid = (Integer) session.getAttribute("uid");
	}
%>
<body>
	<div id="fh5co-wrapper">
		<div id="fh5co-page">
			<%@include file="Navbar.jsp"%>

			<div class="fh5co-section">
				<div class="container">
					<div class="row">
						<div class="col-lg-12">
							<h1 class="page-header">UserInfo</h1>
						</div>
					</div>
					<!-- /.row -->
					<div class="row">
						<div class="col-md-4">
						<img src="<%=path%>/changyoup/images/defaultuser.jpg"
						class="img-responsive mb20">
						</div>
						<div class="col-md-8">
							<div class="row">
								<div class="col-md-4">
									<h3>Nickname:</h3>
								</div>
								<div class="col-md-4">
									<h3><%=nickname%></h3>
								</div>
							</div>
							<div class="row">
								<div class="col-md-4">
									<h3>Email:</h3>
								</div>
								<div class="col-md-4">
									<h3><%=email%></h3>
								</div>
							</div>
							<div class="row">
								<div class="col-md-4">
									<h3>Gender:</h3>
								</div>
								<div class="col-md-4">
									<h3><%=gender%></h3>
								</div>
							</div>
							<div class="row">
								<div class="col-md-4">
									<h3>Area:</h3>
								</div>
								<div class="col-md-4">
									<h3><%=area%></h3>
								</div>
							</div>
							<button class="btn btn-default"
								onclick="window.open('UpdateAccount?id=<%=uid%>')" type="button"
								id="editinfo">Edit Info</button>
							<div class="row">
								<a href="Account" class="active"><i class="fa fa-user fa-fw"></i>
									Userinfo</a> <a href="allPlansPro"><i class="fa fa-book fa-fw"></i>
									我的日志</a>

							</div>

						</div>
						<!-- /.col-lg-12 -->
					</div>
					<!-- /.row -->
				</div>
				<!-- section -->
			</div>
		</div>
	</div>
	<!-- /#page-wrapper -->

	<script src="<%=path%>/changyoup/js/jquery.min.js"></script>
	<script src="<%=path%>/changyoup/js/bootstrap.min.js"></script>
	<script src="<%=path%>/changyoup/js/userinfo.js"></script>
	<script>
		var div1 = document.getElementById('accountli');
		if (div1!=null) div1.setAttribute("class", "active");
		var div2 = document.getElementById('adminaccountli');
		if (div2!=null) div2.setAttribute("class","active");
	</script>
	
	
</body>
</html>