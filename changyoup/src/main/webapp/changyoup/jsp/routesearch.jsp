<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"%>
<%@ page import="model.Routeinfo"%>
<%@ page import="java.util.ArrayList"%>
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
<%
    ArrayList<Routeinfo> routeinfos = new ArrayList<Routeinfo>();
			if (request.getAttribute("routeinfos") != null) {
		routeinfos= (ArrayList<Routeinfo>) request.getAttribute("routeinfos");
			}
%>


<%@include file="CommonHead.jsp"%>
</head>
<style>
 #results li{display:none;}
</style>
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
						<!-- <span>Lovely Crafted by <a href="#" target="_blank" class="fh5co-site-name">FREEHTML5.co</a></span> -->
						<span><a class="btn btn-primary btn-lg" href="#">Get
								Started</a></span>
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
			<!-- 		<div class="fh5co-listing"> -->
			<!-- 			<div class="container"> -->
			<!-- 				<div class="row"> -->
			<!-- 					<div class="col-md-4 col-sm-4 fh5co-item-wrap"> -->
			<!-- 						<a class="fh5co-listing-item" href="GetProductPro?routeid=1"> -->
			<!-- 							<img src="/changyoup/changyoup/images/img-1.jpg" alt="Free HTML5 Bootstrap Template by FreeHTML5.co" class="img-responsive"> -->
			<!-- 							<div class="fh5co-listing-copy"> -->
			<!-- 								<h2>Paris</h2> -->
			<!-- 								<span class="icon"> -->
			<!-- 									<i class="icon-chevron-right"></i> -->
			<!-- 								</span> -->
			<!-- 							</div> -->
			<!-- 						</a> -->
			<!-- 					</div> -->
			<!-- 					<div class="col-md-4 col-sm-4 fh5co-item-wrap"> -->
			<!-- 						<a class="fh5co-listing-item"> -->
			<!-- 							<img src="/changyoup/changyoup/images/img-2.jpg" alt="Free HTML5 Bootstrap Template by FreeHTML5.co" class="img-responsive"> -->
			<!-- 							<div class="fh5co-listing-copy"> -->
			<!-- 								<h2>New York</h2> -->
			<!-- 								<span class="icon"> -->
			<!-- 									<i class="icon-chevron-right"></i> -->
			<!-- 								</span> -->
			<!-- 							</div> -->
			<!-- 						</a> -->
			<!-- 					</div> -->
			<!-- 					<div class="col-md-4 col-sm-4 fh5co-item-wrap"> -->
			<!-- 						<a class="fh5co-listing-item"> -->
			<!-- 							<img src="/changyoup/changyoup/images/img-3.jpg" alt="Free HTML5 Bootstrap Template by FreeHTML5.co" class="img-responsive"> -->
			<!-- 							<div class="fh5co-listing-copy"> -->
			<!-- 								<h2>London</h2> -->
			<!-- 								<span class="icon"> -->
			<!-- 									<i class="icon-chevron-right"></i> -->
			<!-- 								</span> -->
			<!-- 							</div> -->
			<!-- 						</a> -->
			<!-- 					</div> -->
			<!-- 					END 3 row -->

			<!-- 					<div class="col-md-4 col-sm-4 fh5co-item-wrap"> -->
			<!-- 						<a class="fh5co-listing-item"> -->
			<!-- 							<img src="/changyoup/changyoup/images/img-4.jpg" alt="Free HTML5 Bootstrap Template by FreeHTML5.co" class="img-responsive"> -->
			<!-- 							<div class="fh5co-listing-copy"> -->
			<!-- 								<h2>Amsterdam</h2> -->
			<!-- 								<span class="icon"> -->
			<!-- 									<i class="icon-chevron-right"></i> -->
			<!-- 								</span> -->
			<!-- 							</div> -->
			<!-- 						</a> -->
			<!-- 					</div> -->
			<!-- 					<div class="col-md-4 col-sm-4 fh5co-item-wrap"> -->
			<!-- 						<a class="fh5co-listing-item"> -->
			<!-- 							<img src="/changyoup/changyoup/images/img-5.jpg" alt="Free HTML5 Bootstrap Template by FreeHTML5.co" class="img-responsive"> -->
			<!-- 							<div class="fh5co-listing-copy"> -->
			<!-- 								<h2>Australia</h2> -->
			<!-- 								<span class="icon"> -->
			<!-- 									<i class="icon-chevron-right"></i> -->
			<!-- 								</span> -->
			<!-- 							</div> -->
			<!-- 						</a> -->
			<!-- 					</div> -->
			<!-- 					<div class="col-md-4 col-sm-4 fh5co-item-wrap"> -->
			<!-- 						<a class="fh5co-listing-item"> -->
			<!-- 							<img src="/changyoup/changyoup/images/img-6.jpg" alt="Free HTML5 Bootstrap Template by FreeHTML5.co" class="img-responsive"> -->
			<!-- 							<div class="fh5co-listing-copy"> -->
			<!-- 								<h2>Japan</h2> -->
			<!-- 								<span class="icon"> -->
			<!-- 									<i class="icon-chevron-right"></i> -->
			<!-- 								</span> -->
			<!-- 							</div> -->
			<!-- 						</a> -->
			<!-- 					</div> -->
			<!-- 					END 3 row -->


			<!-- 				</div> -->
			<!-- 			</div> -->
			<!-- 		</div> -->




			<div class="fh5co-section">
				<div class="container">
					<div class="row">
						<div class="col-md-6 fh5co-news">
							<h3>Results</h3>
							<ul id="results">
								<%
								    int i=0;
														for(i=0;i<(routeinfos.size());i++) {
														Routeinfo routeinfo=routeinfos.get(i);
								%>
								<li><a href="#"> <span class="fh5co-date"><%=routeinfo.getRoutepublishdate()%></span>
										<h3><%=routeinfo.getRoutetitle()%></h3>
										<p><%=routeinfo.getRouteintro()%></p>
								</a></li>
								<%
								    }
								%>
							</ul>
							<span><button id="loadMore" class="btn btn-primary btn-lg" ">Load More</button></span>
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
<script type="text/javascript">
$(document).ready(function () {
    size_li = $("#results li").size();
    x=5;
    $('#results li:lt('+x+')').show();
    $('#loadMore').click(function () {
        x= (x+5 <= size_li) ? x+5 : size_li;
        $('#results li:lt('+x+')').show();
    });
    
});
	</script>
</html>

