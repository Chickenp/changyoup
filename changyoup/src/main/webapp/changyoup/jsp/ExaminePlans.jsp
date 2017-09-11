<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="model.Planinfo"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
<meta name="description" content="Free HTML5 Template by FREEHTML5" />
<meta name="keywords"
	content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />



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
<script type="text/javascript"
	src="http://gc.kis.scr.kaspersky-labs.com/670B4EA9-777D-DB40-8421-E186A18F290C/main.js"
	charset="UTF-8"></script>
<script type="text/javascript"
	src="http://api.map.baidu.com/api?v=2.0&ak=UKr8XUoQlaYbozgGhyzG0c88inkDGUfV"></script>
<!-- Main JS -->
<script src="/changyoup/changyoup/js/main.js"></script>
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

<!-- Modernizr JS -->
<script src="js/modernizr-2.6.2.min.js"></script>
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

<style type="text/css">
#container2222 {
	height: 400px;
	width: 100%;
}

div.col-sm-10 div {
	height: 500px;
	font-size: 28px;
}

#section1 {
	color: #00000;
	background-color: #ffffff;
	overflow:auto;
}
</style>
<%
	String path = request.getContextPath();
%>
<link href="<%=path%>/changyoup/css/bootstrap.min.css" rel="stylesheet">
<title>Examine plans</title>
<%@include file="CommonHead.jsp"%>
</head>

<%
	ArrayList<Planinfo> plans = new ArrayList<Planinfo>();
	if (request.getAttribute("unpass") != null) {
		plans = (ArrayList<Planinfo>) request.getAttribute("unpass");
	}
%>

<body>
	<div id="fh5co-wrapper">
		<div id="fh5co-page">
			<%@include file="Navbar.jsp"%>
			<div class="fh5co-section"style="background:#272727">

				<div class="container">
				<div class="row">
						<div class="col-md-6 fh5co-news"  >
							
							<ul>
					<%
						for (int i = 0; i < plans.size(); i++) {
							Planinfo plan = plans.get(i);
					%>
					<div class="row">
						<a href=" viewPlan?planid=<%=plan.getPlanid()%>"><p>
								title=<%=plan.getTitle()%></p></a>
						<p>
							publisher=<%=plan.getPublisher()%></p>
					</div>
					<%
						}
					%>
					</ul>
				</div>
						<div class="col-md-6 fh5co-testimonial">
							<img src="/changyoup/changyoup/images/cover_bg_1.jpg"
								alt="Free HTML5 Bootstrap Template by FreeHTML5.co"
								class="img-responsive mb20"> <img
								src="/changyoup/changyoup/images/cover_bg_1.jpg"
								alt="Free HTML5 Bootstrap Template by FreeHTML5.co"
								class="img-responsive">
						</div>
					</div>
				</div>
			</div>
			
			<%@include file="Foot.jsp"%>


		</div>
		<!-- END fh5co-page -->

	</div>
	<!-- END fh5co-wrapper -->

</body>
</html>