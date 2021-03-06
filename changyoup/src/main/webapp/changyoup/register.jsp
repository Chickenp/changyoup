<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Listing &mdash; 100% Free Fully Responsive HTML5 Template
</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Free HTML5 Template by FREEHTML5" />
<meta name="keywords"
	content="free html5, free template, free , html5, css3, mobile first, responsive" />




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
<link rel="stylesheet" href="css/animate.css">
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet" href="css/icomoon.css">
<!-- Bootstrap  -->
<link rel="stylesheet" href="css/bootstrap.css">
<!-- Superfish -->
<link rel="stylesheet" href="css/superfish.css">

<link rel="stylesheet" href="css/style.css">


<!-- Modernizr JS -->
<script src="js/modernizr-2.6.2.min.js"></script>
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
<style>

/****** LOGIN MODAL ******/
.loginmodal-container {
	padding: 30px;
	max-width: 350px;
	width: 100% !important;
	background-color: #F7F7F7;
	margin: 0 auto;
	border-radius: 2px;
	box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
	overflow: hidden;
	font-family: roboto;
}

.loginmodal-container h1 {
	text-align: center;
	font-size: 1.8em;
	font-family: roboto;
}

.loginmodal-container input[type=submit] {
	width: 100%;
	display: block;
	margin-bottom: 10px;
	position: relative;
}

.loginmodal-container input[type=text], input[type=password] {
	height: 44px;
	font-size: 16px;
	width: 100%;
	margin-bottom: 10px;
	-webkit-appearance: none;
	background: #fff;
	border: 1px solid #d9d9d9;
	border-top: 1px solid #c0c0c0;
	/* border-radius: 2px; */
	padding: 0 8px;
	box-sizing: border-box;
	-moz-box-sizing: border-box;
}

.loginmodal-container input[type=text]:hover, input[type=password]:hover
	{
	border: 1px solid #b9b9b9;
	border-top: 1px solid #a0a0a0;
	-moz-box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
	-webkit-box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
	box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
}

.loginmodal {
	text-align: center;
	font-size: 14px;
	font-family: 'Arial', sans-serif;
	font-weight: 700;
	height: 36px;
	padding: 0 8px;
	/* border-radius: 3px; */
	/* -webkit-user-select: none;
  user-select: none; */
}

.loginmodal-submit {
	/* border: 1px solid #3079ed; */
	border: 0px;
	color: #fff;
	text-shadow: 0 1px rgba(0, 0, 0, 0.1);
	background-color: #4d90fe;
	padding: 17px 0px;
	font-family: roboto;
	font-size: 14px;
	/* background-image: -webkit-gradient(linear, 0 0, 0 100%,   from(#4d90fe), to(#4787ed)); */
}

.loginmodal-submit:hover {
	/* border: 1px solid #2f5bb7; */
	border: 0px;
	text-shadow: 0 1px rgba(0, 0, 0, 0.3);
	background-color: #357ae8;
	/* background-image: -webkit-gradient(linear, 0 0, 0 100%,   from(#4d90fe), to(#357ae8)); */
}

.loginmodal-container a {
	text-decoration: none;
	color: #666;
	font-weight: 400;
	text-align: center;
	display: inline-block;
	opacity: 0.6;
	transition: opacity ease 0.5s;
}

.login-help {
	font-size: 12px;
}
</style>
<script src="js/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function () {
$("input[type=password]").keyup(function(){
								    var ucase = new RegExp("[A-Z]+");
									var lcase = new RegExp("[a-z]+");
									var num = new RegExp("[0-9]+");
									
									if($("#password1").val().length >= 8){
										$("#8char").removeClass("glyphicon-remove");
										$("#8char").addClass("glyphicon-ok");
										$("#8char").css("color","#00A41E");
									}else{
										$("#8char").removeClass("glyphicon-ok");
										$("#8char").addClass("glyphicon-remove");
										$("#8char").css("color","#FF0004");
									}
									
									if(ucase.test($("#password1").val())){
										$("#ucase").removeClass("glyphicon-remove");
										$("#ucase").addClass("glyphicon-ok");
										$("#ucase").css("color","#00A41E");
									}else{
										$("#ucase").removeClass("glyphicon-ok");
										$("#ucase").addClass("glyphicon-remove");
										$("#ucase").css("color","#FF0004");
									}
									
									if(lcase.test($("#password1").val())){
										$("#lcase").removeClass("glyphicon-remove");
										$("#lcase").addClass("glyphicon-ok");
										$("#lcase").css("color","#00A41E");
									}else{
										$("#lcase").removeClass("glyphicon-ok");
										$("#lcase").addClass("glyphicon-remove");
										$("#lcase").css("color","#FF0004");
									}
									
									if(num.test($("#password1").val())){
										$("#num").removeClass("glyphicon-remove");
										$("#num").addClass("glyphicon-ok");
										$("#num").css("color","#00A41E");
									}else{
										$("#num").removeClass("glyphicon-ok");
										$("#num").addClass("glyphicon-remove");
										$("#num").css("color","#FF0004");
									}
									
									if($("#password1").val() == $("#password2").val()){
										$("#pwmatch").removeClass("glyphicon-remove");
										$("#pwmatch").addClass("glyphicon-ok");
										$("#pwmatch").css("color","#00A41E");
									}else{
										$("#pwmatch").removeClass("glyphicon-ok");
										$("#pwmatch").addClass("glyphicon-remove");
										$("#pwmatch").css("color","#FF0004");
									}
								})});(jQuery);</script>
</head>
<body>
	<div id="fh5co-wrapper">
		<div id="fh5co-page">
			<div id="fh5co-header">
				<div class="fh5co-hero">
					<div class="fh5co-overlay"></div>
					<div class="fh5co-cover text-center"
						data-stellar-background-ratio="0.5"
						style="background-image: url(&quot;images/cover_bg_1.jpg&quot;); background-position: 0px 0px;">
						<div class="desc animate-box fadeInUp animated">
							<h2>Register</h2>
							<div class="container">
								<div class="row">
									
								</div>
								<div class="row">
									<div class="col-sm-6 col-sm-offset-3">
										
										<form method="post" id="passwordForm">
											<input type="password" class="input-lg form-control"
												name="password1" id="password1" placeholder="New Password"
												autocomplete="off">
											<div class="row">
												<div class="col-md-6">
													<span id="8char" class="glyphicon glyphicon-remove"
														style="color: #FF0004;"></span> 8 Characters Long<br>
													<span id="ucase" class="glyphicon glyphicon-remove"
														style="color: #FF0004;"></span> One Uppercase Letter
												</div>
												<div class="col-md-6">
													<span id="lcase" class="glyphicon glyphicon-remove"
														style="color: #FF0004;"></span> One Lowercase Letter<br>
													<span id="num" class="glyphicon glyphicon-remove"
														style="color: #FF0004;"></span> One Number
												</div>
											</div>
											<input type="password" class="input-lg form-control"
												name="password2" id="password2"
												placeholder="Repeat Password" autocomplete="off">
											<div class="row">
												<div class="col-md-12">
													<span id="pwmatch" class="glyphicon glyphicon-remove"
														style="color: #FF0004;"></span> Passwords Match
												</div>
											</div>
											<input type="submit"
												class="col-xs-12 btn btn-primary btn-load btn-lg"
												data-loading-text="Changing Password..."
												value="Change Password">
										</form>
									</div>
									<!--/col-sm-6-->
								</div>
								<!--/row-->
								
							</div>
						</div>
					</div>

				</div>
				<header id="fh5co-header-section">
				<div class="container">
					<div class="nav-header">
						<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle"><i></i></a>
						<h1 id="fh5co-logo">
							<a href="index.html">Listing</a>
						</h1>
						<!-- START #fh5co-menu-wrap -->
						<nav id="fh5co-menu-wrap" role="navigation">
						<ul class="sf-menu" id="fh5co-primary-menu">
							<li class="active"><a href="index.html">Home</a></li>
							<li><a href="listing.html" class="fh5co-sub-ddown">Listing</a>
								<ul class="fh5co-sub-menu">
									<li><a
										href="#/preview/?item=build-free-html5-bootstrap-template"
										target="_blank">Build</a></li>
									<li><a
										href="#/preview/?item=work-free-html5-template-bootstrap"
										target="_blank">Work</a></li>
									<li><a
										href="#/preview/?item=light-free-html5-template-bootstrap"
										target="_blank">Light</a></li>
									<li><a
										href="#/preview/?item=relic-free-html5-template-using-bootstrap"
										target="_blank">Relic</a></li>
									<li><a
										href="#/preview/?item=display-free-html5-template-using-bootstrap"
										target="_blank">Display</a></li>
									<li><a
										href="#/preview/?item=sprint-free-html5-template-bootstrap"
										target="_blank">Sprint</a></li>
								</ul></li>
							<li><a href="#" class="fh5co-sub-ddown">Dropdown</a>
								<ul class="fh5co-sub-menu">
									<li><a href="left-sidebar.html">Web Development</a></li>
									<li><a href="right-sidebar.html">Branding &amp;
											Identity</a></li>
									<li><a href="#" class="fh5co-sub-ddown">Free HTML5</a>
										<ul class="fh5co-sub-menu">
											<li><a
												href="#/preview/?item=build-free-html5-bootstrap-template"
												target="_blank">Build</a></li>
											<li><a
												href="#/preview/?item=work-free-html5-template-bootstrap"
												target="_blank">Work</a></li>
											<li><a
												href="#/preview/?item=light-free-html5-template-bootstrap"
												target="_blank">Light</a></li>
											<li><a
												href="#/preview/?item=relic-free-html5-template-using-bootstrap"
												target="_blank">Relic</a></li>
											<li><a
												href="#/preview/?item=display-free-html5-template-using-bootstrap"
												target="_blank">Display</a></li>
											<li><a
												href="#/preview/?item=sprint-free-html5-template-bootstrap"
												target="_blank">Sprint</a></li>
										</ul></li>
									<li><a href="#">UI Animation</a></li>
									<li><a href="#">Copywriting</a></li>
									<li><a href="#">Photography</a></li>
								</ul></li>
							<li><a href="contact.html">Contact</a></li>
							<li><a href="#" data-toggle="modal" data-target="#login-modal">Login</a></li>
							

						</ul>
						</nav>
					</div>
				</div>
				</header>

			</div>




			<div class="modal fade" id="login-modal" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true"
				style="display: none;">
				<div class="modal-dialog">
					<div class="loginmodal-container">
						<h1>Login to Your Account</h1>
						<br>
						<form method="post" action="Login">
							<input type="text" name="username" placeholder="username">
							<input type="password" name="password" placeholder="password">
							<input type="submit" name="Submits"
								class="login loginmodal-submit" value="login">
						</form>

						<div class="login-help">
							<a href="#">Register</a> - <a href="#">Forgot Password</a>
						</div>
					</div>
				</div>
			</div>
			<div class="fh5co-listing"></div>




			<div class="fh5co-section"></div>

			<footer>
			<div id="footer"></div>
			</footer>


		</div>
		<!-- END fh5co-page -->

	</div>
	<!-- END fh5co-wrapper -->

	<!-- jQuery -->


	
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Stellar -->
	<script src="js/jquery.stellar.min.js"></script>
	<!-- Superfish -->
	<script src="js/hoverIntent.js"></script>
	<script src="js/superfish.js"></script>

	<!-- Main JS -->
	<script src="js/main.js"></script>

</body>
</html>

</html>
