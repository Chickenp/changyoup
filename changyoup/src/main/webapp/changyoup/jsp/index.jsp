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



<%@include file="CommonHead.jsp"%>
</head>
<body>
	<div id="fh5co-wrapper">
		<div id="fh5co-page">
			<%@include file="Navbar.jsp"%>

			<div class="modal fade" id="myModal" role="dialog">
				<div class="modal-dialog">

					<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header" style="padding: 35px 50px;">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4>
								<span class="glyphicon glyphicon-lock"></span> You haven't
								login!
							</h4>
						</div>

					</div>

				</div>
			</div>
			<div class="fh5co-hero">
				<div class="fh5co-overlay"></div>
				<div class="fh5co-cover text-center"
					data-stellar-background-ratio="0.5"
					style="background-image: url(/changyoup/changyoup/images/cover_bg_1.jpg);">
					<div class="desc animate-box">
						<h2>Travel Around The World.</h2>
						<form method="POST" action="SearchRoutePro">
							<!--webbot bot="SaveResults" U-File="fpweb:///_private/form_results.txt"
S-Format="TEXT/CSV" S-Label-Fields="TRUE" -->
							<p></p>
							<p></p>
							<p>

								<font size="5" color="#0000FF"></font><input type="text"
									name="searchword" size="25">
							<p></p>
							<p>
								<input type="submit" name="Submits" value="Search">
							</p>
						</form>
						
							<p>
								<ul class="tags" >
									<li><a href="TagSearchPro?tagid=1">7-day-trip</a></li>
									<li><a href="TagSearchPro?tagid=1">Yourself</a></li>
									<li><a href="TagSearchPro?tagid=1">DOG</a></li>
								</ul>
							
						
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
							<input type="submit" name="Submits"
								class="login loginmodal-submit" value="login">
						</form>

						<div class="login-help">
							<a href="register.jsp">Register</a> - <a href="#">Forgot
								Password</a>
						</div>
					</div>
				</div>
			</div>
			<div class="fh5co-listing">
				<div class="container">
					<div class="row">
						<div class="col-md-4 col-sm-4 fh5co-item-wrap">
							<a class="fh5co-listing-item" href="GetProductPro?routeid=1">
								<img src="/changyoup/changyoup/images/img-1.jpg"
								alt="Free HTML5 Bootstrap Template by FreeHTML5.co"
								class="img-responsive">
								<div class="fh5co-listing-copy">
									<h2>Paris</h2>
									<span class="icon"> <i class="icon-chevron-right"></i>
									</span>
								</div>
							</a>
						</div>
						<div class="col-md-4 col-sm-4 fh5co-item-wrap">
							<a class="fh5co-listing-item"> <img
								src="/changyoup/changyoup/images/img-2.jpg"
								alt="Free HTML5 Bootstrap Template by FreeHTML5.co"
								class="img-responsive">
								<div class="fh5co-listing-copy">
									<h2>New York</h2>
									<span class="icon"> <i class="icon-chevron-right"></i>
									</span>
								</div>
							</a>
						</div>
						<div class="col-md-4 col-sm-4 fh5co-item-wrap">
							<a class="fh5co-listing-item"> <img
								src="/changyoup/changyoup/images/img-3.jpg"
								alt="Free HTML5 Bootstrap Template by FreeHTML5.co"
								class="img-responsive">
								<div class="fh5co-listing-copy">
									<h2>London</h2>
									<span class="icon"> <i class="icon-chevron-right"></i>
									</span>
								</div>
							</a>
						</div>
						<!-- END 3 row -->

						<div class="col-md-4 col-sm-4 fh5co-item-wrap">
							<a class="fh5co-listing-item"> <img
								src="/changyoup/changyoup/images/img-4.jpg"
								alt="Free HTML5 Bootstrap Template by FreeHTML5.co"
								class="img-responsive">
								<div class="fh5co-listing-copy">
									<h2>Amsterdam</h2>
									<span class="icon"> <i class="icon-chevron-right"></i>
									</span>
								</div>
							</a>
						</div>
						<div class="col-md-4 col-sm-4 fh5co-item-wrap">
							<a class="fh5co-listing-item"> <img
								src="/changyoup/changyoup/images/img-5.jpg"
								alt="Free HTML5 Bootstrap Template by FreeHTML5.co"
								class="img-responsive">
								<div class="fh5co-listing-copy">
									<h2>Australia</h2>
									<span class="icon"> <i class="icon-chevron-right"></i>
									</span>
								</div>
							</a>
						</div>
						<div class="col-md-4 col-sm-4 fh5co-item-wrap">
							<a class="fh5co-listing-item"> <img
								src="/changyoup/changyoup/images/img-6.jpg"
								alt="Free HTML5 Bootstrap Template by FreeHTML5.co"
								class="img-responsive">
								<div class="fh5co-listing-copy">
									<h2>Japan</h2>
									<span class="icon"> <i class="icon-chevron-right"></i>
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
								<li><a href="#"> <span class="fh5co-date">Sep.
											10, 2016</span>
										<h3>Newly done Bridge of London</h3>
										<p>Lorem ipsum dolor sit amet consectetur adipisicing
											elit. Accusamus reprehenderit!</p>
								</a></li>
								<li><a href="#"> <span class="fh5co-date">Sep.
											10, 2016</span>
										<h3>Newly done Bridge of London</h3>
										<p>Lorem ipsum dolor sit amet consectetur adipisicing
											elit. Accusamus reprehenderit!</p>
								</a></li>
								<li><a href="#"> <span class="fh5co-date">Sep.
											10, 2016</span>
										<h3>Newly done Bridge of London</h3>
										<p>Lorem ipsum dolor sit amet consectetur adipisicing
											elit. Accusamus reprehenderit!</p>
								</a></li>
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

	<script>
		var div1 = document.getElementById('homeli');
		if (div1!=null) div1.setAttribute("class", "active");
	</script>

</body>
</html>

