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
<title>Listing &mdash; 100% Free Fully Responsive HTML5 Template
</title>
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
<meta name="description" content="Free HTML5 Template by FREEHTML5" />
<meta name="keywords"
	content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />



<%@include file="CommonHead.jsp"%>
<%
    String path = request.getContextPath();
%>
<link href="<%=path%>/changyoup/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<%
	    ArrayList<Planinfo> plans = new ArrayList<Planinfo>();
				if (request.getAttribute("userplans") != null) {
					plans = (ArrayList<Planinfo>) request.getAttribute("userplans");
				}
	%>
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
					<div class="desc animate-box"></div>
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






			<div class="fh5co-section" style="background: #272727">

				<div class="container">
					<button class="btn btn-primary"
						onclick="window.location.href='newPlan'" style="font-size: 200%;">新增攻略</button>
					<p>
					<div class="row">
						<div class="col-md-6 fh5co-news">

							<ul>
								<%
								    for (int i = 0; i < plans.size(); i++) {
																				Planinfo plan = plans.get(i);
								%>
								<li><a href="viewPlan?planid=<%=plan.getPlanid()%>"> 
										<h3><%=plan.getTitle()%></h3>
										<p><%=plan.getPublisher()%></p></a></li>
								<div>
								<input type="button" class="btn btn-primary"
									onclick="window.location.href='viewPlan?planid=<%=plan.getPlanid()%>'"
									value="查看攻略"></input>
								<input type="button" class="btn btn-primary"
									onclick="window.location.href='editPlan?planid=<%=plan.getPlanid()%>'"
									value="修改攻略"></input></div>
								</a>
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

			<footer>
				<div id="footer">
					<div class="container">
						<div class="row">
							<div class="col-md-6 col-md-offset-3 text-center">
								<p class="fh5co-social-icons">
									<a href="#"><i class="icon-twitter2"></i></a> <a href="#"><i
										class="icon-facebook2"></i></a> <a href="#"><i
										class="icon-instagram"></i></a> <a href="#"><i
										class="icon-dribbble2"></i></a> <a href="#"><i
										class="icon-youtube"></i></a>
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
<script type="text/javascript">
	
</script>
</html>
