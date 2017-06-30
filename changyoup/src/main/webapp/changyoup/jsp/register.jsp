<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Listing &mdash; 100% Free Fully Responsive HTML5 Template
</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Free HTML5 Template by FREEHTML5" />
<meta name="keywords"
	content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />

<!-- Modernizr JS -->
<script src="/changyoup/changyoup/js/modernizr-2.6.2.min.js"></script>
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
<script src="changyoup/changyoup/js/modernizr-2.6.2.min.js"></script>
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
	<script src="changyoup/changyoup/js/respond.min.js"></script>
	<![endif]-->

<script src="/changyoup/changyoup/js/register.js"></script>




</head>
<body>
	<div id="fh5co-wrapper">
		<div id="fh5co-page">
			<div id="fh5co-header">
				<div class="fh5co-hero">
					<div class="fh5co-overlay"></div>
					<div class="fh5co-cover text-center"
						data-stellar-background-ratio="0.5"
						style="background-image: url(&quot;/changyoup/changyoup/images/cover_bg_1.jpg&quot;); background-position: 0px 0px;">
						<div class="desc animate-box fadeInUp animated">
							<h2>Register</h2>
							<div class="container">
								<div class="row"></div>
								<div class="row">
									<div class="col-sm-6 col-sm-offset-3">
										<form method="post" id="passwordForm" action="Register">
											<input type="text" class="input-lg form-control"
												name="username" id="username" placeholder="Username"
												autocomplete="off"> <input type="password"
												class="input-lg form-control" name="password" id="password"
												placeholder="Your Password" autocomplete="off">
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
												id="submitbutton" name="submitbutton"
												class="col-xs-12 btn btn-primary disabled btn-lg"												
												value="Register">
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
					<div class="modal fade" id="login-modal" tabindex="-1"
						role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"
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
									<a href="/changyoup/cahgnyoup/jsp/register.jsp">Register</a> - <a href="#">Forgot
										Password</a>
								</div>
							</div>
						</div>
					</div>
					<div class="container">
						<div class="nav-header">
							<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle"><i></i></a>
							<h1 id="fh5co-logo">
								<a href="index.html">Listing</a>
							</h1>
							<!-- START #fh5co-menu-wrap -->
							<nav id="fh5co-menu-wrap" role="navigation">
								<ul class="sf-menu" id="fh5co-primary-menu">
									<li class="active"><a href="index.jsp">Home</a></li>
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
									<li><a href="#" data-toggle="modal"
										data-target="#login-modal">Login</a></li>

								</ul>
							</nav>
						</div>
					</div>
				</header>

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




</body>
</html>

</html>
