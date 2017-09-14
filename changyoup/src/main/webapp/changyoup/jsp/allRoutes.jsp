<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="model.Routeinfo"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>All Routes</title>
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
<%
	ArrayList<Routeinfo> routes = new ArrayList<Routeinfo>();
	if (request.getAttribute("routes") != null) {
		routes = (ArrayList<Routeinfo>) request.getAttribute("routes");
	}
%>


<body>

	<div id="fh5co-wrapper">
		<div id="fh5co-page">
			<%@include file="Navbar.jsp"%>


			<div class="fh5co-hero">
				<div class="fh5co-overlay"></div>
				<div class="fh5co-cover text-center"
					data-stellar-background-ratio="0.5"
					style="background-image: url(/changyoup/changyoup/images/beachchair.jpg);">
					<div class="desc animate-box">
						<h2>All Routes</h2>
					</div>
				</div>
			</div>

			<div class="fh5co-section" style="background: #272727">
				<div class="container">
					<%
						for (int i = 0; i < routes.size(); i++) {
							Routeinfo route = routes.get(i);
					%>

					<div class="row">
						<div class="col-md-6 fh5co-news">
						<ul>
						<li><a href="GetProductPro?routeid=<%=route.getRouteid()%>"> 
							<h3><%=route.getRouteintro()%></h3>
							<p>routedays=<%=route.getRoutedays()%></p>
						</a></li>
						</ul>
							<input type="button" class="btn btn-primary"
								onclick="window.location.href='GetProductPro?routeid=<%=route.getRouteid()%>'"
								value="查看路线"></input>
						</div>
					</div>
					<%
						}
					%>
				</div>
			</div>
			<%@include file="Foot.jsp"%>
		</div>
	</div>
	
	
	<script src="<%=path%>/changyoup/js/jquery.min.js"></script>
	<script src="<%=path%>/changyoup/js/bootstrap.min.js"></script>
	<script>
		var div1 = document.getElementById('routeli');
		div1.setAttribute("class", "active");
	</script>
</body>
</html>