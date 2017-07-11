<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Listing &mdash; 100% Free Fully Responsive HTML5 Template </title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Template by FREEHTML5" />
	<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
	

  
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
	<script src="js/main.js"></script>
  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
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

	</head>
	<body>
		<div id="fh5co-wrapper">
		<div id="fh5co-page">
		<div id="fh5co-header">
			<header id="fh5co-header-section">
				<div class="container">
					<div class="nav-header">
						<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle"><i></i></a>
						<h1 id="fh5co-logo"><a href="index.jsp">Listing</a></h1>
						<!-- START #fh5co-menu-wrap -->
						<nav id="fh5co-menu-wrap" role="navigation">
							<ul class="sf-menu" id="fh5co-primary-menu">
								<li class="active">
									<a href="index.jsp">Home</a>
								</li>
								<li>
									<a href="listing.html" class="fh5co-sub-ddown">Listing</a>
									<ul class="fh5co-sub-menu">
										<li><a href="#/preview/?item=build-free-html5-bootstrap-template" target="_blank">Build</a></li>
										<li><a href="#/preview/?item=work-free-html5-template-bootstrap" target="_blank">Work</a></li>
										<li><a href="#/preview/?item=light-free-html5-template-bootstrap" target="_blank">Light</a></li>
										<li><a href="#/preview/?item=relic-free-html5-template-using-bootstrap" target="_blank">Relic</a></li>
										<li><a href="#/preview/?item=display-free-html5-template-using-bootstrap" target="_blank">Display</a></li>
										<li><a href="#/preview/?item=sprint-free-html5-template-bootstrap" target="_blank">Sprint</a></li>
									</ul>
								</li>
								<li>
									<a href="#" class="fh5co-sub-ddown">Dropdown</a>
									 <ul class="fh5co-sub-menu">
									 	<li><a href="left-sidebar.html">Web Development</a></li>
									 	<li><a href="right-sidebar.html">Branding &amp; Identity</a></li>
										<li>
											<a href="#" class="fh5co-sub-ddown">Free HTML5</a>
											<ul class="fh5co-sub-menu">
												<li><a href="#/preview/?item=build-free-html5-bootstrap-template" target="_blank">Build</a></li>
												<li><a href="#/preview/?item=work-free-html5-template-bootstrap" target="_blank">Work</a></li>
												<li><a href="#/preview/?item=light-free-html5-template-bootstrap" target="_blank">Light</a></li>
												<li><a href="#/preview/?item=relic-free-html5-template-using-bootstrap" target="_blank">Relic</a></li>
												<li><a href="#/preview/?item=display-free-html5-template-using-bootstrap" target="_blank">Display</a></li>
												<li><a href="#/preview/?item=sprint-free-html5-template-bootstrap" target="_blank">Sprint</a></li>
											</ul>
										</li>
										<li><a href="#">UI Animation</a></li>
										<li><a href="#">Copywriting</a></li>
										<li><a href="#">Photography</a></li> 
									</ul>
								</li>
								<li><a href="contact.html">Contact</a></li>
								<%
		                        if ((session.getAttribute("uid") == null)|| (session.getAttribute("uid") == "")) {
	                            %>
	                            <li><a data-toggle="modal" href="#myModal">User Center</a></li>
	                            <%
	                            } else {
 		                        %>
 		                        <li><a href="Usercenter.jsp">User Center</a></li>
 		                        <% 
 	                            }
		                        %>		
								
								<%
		                        if ((session.getAttribute("uid") == null)|| (session.getAttribute("uid") == "")) {
	                            %>
	                            <li><a href="#" data-toggle="modal" data-target="#login-modal">Login</a></li>
	                            <%
	                            } else {
 		                        %>
 		                        <li><a href="logout.jsp">Logout</a></li>
 		                        <% 
 	                            }
		                        %>						

			
								
							</ul>
						</nav>
					</div>
				</div>
			</header>
			
		</div>
		
		 <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><span class="glyphicon glyphicon-lock"></span> You haven't login!</h4>
        </div>
        
      </div>
      
    </div>
  </div> 
		<div class="fh5co-hero">
			<div class="fh5co-overlay"></div>
			<div class="fh5co-cover text-center" data-stellar-background-ratio="0.5" style="background-image: url(/changyoup/changyoup/images/cover_bg_1.jpg);">
				<div class="desc animate-box">
					<h2>Travel Around The World.</h2>
					<!-- <span>Lovely Crafted by <a href="#" target="_blank" class="fh5co-site-name">FREEHTML5.co</a></span> -->
					<span><a class="btn btn-primary btn-lg" href="#">Get Started</a></span>
				</div>
			</div>

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
					<input type="submit" name="Submits" class="login loginmodal-submit"
						value="login">
				</form>

				<div class="login-help">
					<a href="register.jsp">Register</a> - <a href="#">Forgot Password</a>
				</div>
			</div>
		</div>
	</div>
		<div class="fh5co-listing">
			<div class="container">
				<div class="row">
					<div class="col-md-4 col-sm-4 fh5co-item-wrap">
						<a class="fh5co-listing-item" href="GetProductPro">
							<img src="/changyoup/changyoup/images/img-1.jpg" alt="Free HTML5 Bootstrap Template by FreeHTML5.co" class="img-responsive">
							<div class="fh5co-listing-copy">
								<h2>Paris</h2>
								<span class="icon">
									<i class="icon-chevron-right"></i>
								</span>
							</div>
						</a>
					</div>
					<div class="col-md-4 col-sm-4 fh5co-item-wrap">
						<a class="fh5co-listing-item">
							<img src="/changyoup/changyoup/images/img-2.jpg" alt="Free HTML5 Bootstrap Template by FreeHTML5.co" class="img-responsive">
							<div class="fh5co-listing-copy">
								<h2>New York</h2>
								<span class="icon">
									<i class="icon-chevron-right"></i>
								</span>
							</div>
						</a>
					</div>
					<div class="col-md-4 col-sm-4 fh5co-item-wrap">
						<a class="fh5co-listing-item">
							<img src="/changyoup/changyoup/images/img-3.jpg" alt="Free HTML5 Bootstrap Template by FreeHTML5.co" class="img-responsive">
							<div class="fh5co-listing-copy">
								<h2>London</h2>
								<span class="icon">
									<i class="icon-chevron-right"></i>
								</span>
							</div>
						</a>
					</div>
					<!-- END 3 row -->

					<div class="col-md-4 col-sm-4 fh5co-item-wrap">
						<a class="fh5co-listing-item">
							<img src="/changyoup/changyoup/images/img-4.jpg" alt="Free HTML5 Bootstrap Template by FreeHTML5.co" class="img-responsive">
							<div class="fh5co-listing-copy">
								<h2>Amsterdam</h2>
								<span class="icon">
									<i class="icon-chevron-right"></i>
								</span>
							</div>
						</a>
					</div>
					<div class="col-md-4 col-sm-4 fh5co-item-wrap">
						<a class="fh5co-listing-item">
							<img src="/changyoup/changyoup/images/img-5.jpg" alt="Free HTML5 Bootstrap Template by FreeHTML5.co" class="img-responsive">
							<div class="fh5co-listing-copy">
								<h2>Australia</h2>
								<span class="icon">
									<i class="icon-chevron-right"></i>
								</span>
							</div>
						</a>
					</div>
					<div class="col-md-4 col-sm-4 fh5co-item-wrap">
						<a class="fh5co-listing-item">
							<img src="/changyoup/changyoup/images/img-6.jpg" alt="Free HTML5 Bootstrap Template by FreeHTML5.co" class="img-responsive">
							<div class="fh5co-listing-copy">
								<h2>Japan</h2>
								<span class="icon">
									<i class="icon-chevron-right"></i>
								</span>
							</div>
						</a>
					</div>
					<!-- END 3 row -->


				</div>
			</div>
		</div>
        
        


		<div class="fh5co-section">
			<div class="container">
				<div class="row">
					<div class="col-md-6 fh5co-news">
						<h3>News</h3>
						<ul>
							<li>
								<a href="#">
									<span class="fh5co-date">Sep. 10, 2016</span>
									<h3>Newly done Bridge of London</h3>
									<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus reprehenderit!</p>
								</a>
							</li>
							<li>
								<a href="#">
									<span class="fh5co-date">Sep. 10, 2016</span>
									<h3>Newly done Bridge of London</h3>
									<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus reprehenderit!</p>
								</a>
							</li>
							<li>
								<a href="#">
									<span class="fh5co-date">Sep. 10, 2016</span>
									<h3>Newly done Bridge of London</h3>
									<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Accusamus reprehenderit!</p>
								</a>
							</li>
						</ul>
					</div>
					<div class="col-md-6 fh5co-testimonial">
						<img src="/changyoup/changyoup/images/cover_bg_1.jpg" alt="Free HTML5 Bootstrap Template by FreeHTML5.co" class="img-responsive mb20">
						<img src="/changyoup/changyoup/images/cover_bg_1.jpg" alt="Free HTML5 Bootstrap Template by FreeHTML5.co" class="img-responsive">
					</div>	
				</div>
			</div>
		</div>
		
		<footer>
			<div id="footer">
				<div class="container">
					<div class="row">
						<div class="col-md-6 col-md-offset-3 text-center">
							<p class="fh5co-social-icons">
								<a href="#"><i class="icon-twitter2"></i></a>
								<a href="#"><i class="icon-facebook2"></i></a>
								<a href="#"><i class="icon-instagram"></i></a>
								<a href="#"><i class="icon-dribbble2"></i></a>
								<a href="#"><i class="icon-youtube"></i></a>
							</p>
							
						</div>
					</div>
				</div>
			</div>
		</footer>
	

	</div>
	<!-- END fh5co-page -->

	</div>
	<!-- END fh5co-wrapper -->

	

	</body>
</html>

