<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="model.Route"%>
<%@ page import="model.Routecomment"%>
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

<!-- Baidu Map -->
<script type="text/javascript"
	src="http://gc.kis.scr.kaspersky-labs.com/670B4EA9-777D-DB40-8421-E186A18F290C/main.js"
	charset="UTF-8"></script>
<script type="text/javascript"
	src="http://api.map.baidu.com/api?v=2.0&ak=UKr8XUoQlaYbozgGhyzG0c88inkDGUfV"></script>

<!-- bootbox -->
<script src="/changyoup/changyoup/js/bootbox.min.js"></script>

<!-- <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'> -->
<%@include file="CommonHead.jsp"%>
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
	overflow: auto;
}
</style>
<%
    int date = (Integer)request.getAttribute("date");
			    ArrayList<String> location_1 =new ArrayList<String>();
			    ArrayList<String> location_2 =new ArrayList<String>();
			    ArrayList<String> document =new ArrayList<String>();
			    ArrayList<String> tagnames =new ArrayList<String>();
			    ArrayList<Integer> tagids =new ArrayList<Integer>();
			    ArrayList<Routecomment> comments =new ArrayList<Routecomment>();
			    if (request.getAttribute("location_1") != null) {
			    	location_1 = (ArrayList<String>) request.getAttribute("location_1");
						}
			    if (request.getAttribute("location_2") != null) {
			    	location_2 = (ArrayList<String>) request.getAttribute("location_2");
						}
			    if (request.getAttribute("document") != null) {
			    	document = (ArrayList<String>) request.getAttribute("document");
						}
			    if (request.getAttribute("tagnames") != null) {
					tagnames = (ArrayList<String>) request.getAttribute("tagnames");
					    }
			    if (request.getAttribute("tagids") != null) {
					tagids = (ArrayList<Integer>) request.getAttribute("tagids");
					    }
			    if (request.getAttribute("comments") != null) {
				comments = (ArrayList<Routecomment>) request.getAttribute("comments");
				    }
			    //System.out.println(document);
%>

</head>
<body>

	<div id="fh5co-wrapper">
		<div id="fh5co-page">
			<div id="fh5co-header">
				<header id="fh5co-header-section">
					<div class="container">
						<div class="nav-header">
							<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle"><i></i></a>
							<h1 id="fh5co-logo">
								<a href="index.jsp">Listing</a>
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
									<%
									    if ((session.getAttribute("uid") == null)
																																																																																													|| (session.getAttribute("uid") == "")) {
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
									    if ((session.getAttribute("uid") == null)
																																																																																													|| (session.getAttribute("uid") == "")) {
									%>
									<li><a href="#" data-toggle="modal"
										data-target="#login-modal">Login</a></li>
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
								
								
								
						<p>
							<ul class="tags" >
							<%
						    for(int t=0; t<tagnames.size(); t++){
						    %>
							<li><a href="TagSearchPro?tagid=<%=tagids.get(t)%>"><%=tagnames.get(t) %></a></li>
							<%
							}
							%>
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
			</div>

			

			<div class="container">
				<div class="row" style="position: relative;">
					<div class="btn-group-vertical" style="position: absolute">
						<%
						    for(int i=1; i<=date; i++){
						%>
						<button id="but<%=i%>" type="button" onClick="change_day(this.id)"
							class="btn btn-primary">
							Day<%=i%></button>
						<%
						    }
						%>
					</div>

					<div class="col-sm-10" style="position: relative; left: 100px">

						<div id="section1"></div>

					</div>

				</div>

			</div>





			<div class="fh5co-section">

				<div class="container">
					<div id="container2222"></div>

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
						</div>
						
					</div>
					<p>
					<div class="container">
						<h2>Comments</h2>
						<ul id="comments" class="list-group">
							<%
							    int i=0;
																																			for(i=0;i<(comments.size());i++) {
																																			Routecomment comment=comments.get(i);
							%>
							<li>
								<div class="panel panel-primary">
									<div class="panel-heading">User<%=comment.getUserid()%></div>
									<div class="panel-body" style="background:#000000;"><%=comment.getText()%></div>
								</div>
							</li>
							<%
							    }
							%>
						</ul>
						<span><button id="loadMore" class="btn btn-primary"
								sytle="float:center;">Load More</button></span>
					</div>
					<p>
					<form method="post" name="goform" id="goform"
						enctype="multipart/form-data">
						<div class="form-group">
							<label for="comment">Comment:</label>
							<textarea class="form-control" rows="5" id="comment"></textarea>
							<br> <input id="timeline_post_btn" type="submit"
								name="Submits" class="btn btn-primary" value="Comment"
								style="float: right;">
						</div>
					</form>
				
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
	//var strarr = [ "", "day1:eat poo", "day2:eat shit", "day3:think about 312" ];
	var secc = document.getElementById("section1");
	var num = 1;
	var content = [ "", "普陀区粪便处理厂", "浙江省宁波市奉化市茅坑村", "想想隔壁312" ];
	var geo = new Array(<%=location_1.size()+1%>);
	var doc = new Array();
	var loc = new Array();
<%for(int j = 1; j <= location_1.size(); j++){%>
	var var1 = <%=location_1.get(j-1)%>;
	var var2 = <%=location_2.get(j-1)%>;
	var var3='<%=document.get(j-1)%>';

	loc[0] = var1;
	loc[1] = var2;
	geo[<%=j%>] = loc;
	doc[<%=j%>] = var3;
	loc = [ , ];
<%}%>
	var map = new BMap.Map("container2222"); // 创建Map实例
	var point = new BMap.Point(geo[num][0], geo[num][1]);
	secc.innerHTML = doc[num];
	map.centerAndZoom(point, 24); // 初始化地图,设置中心点坐标和地图级别
	map.addControl(new BMap.MapTypeControl()); //添加地图类型控件
	map.openInfoWindow(infoWindow, point); //开启信息窗口
	var infoWindow = new BMap.InfoWindow(content[num]); // 创建信息窗口对象
	map.openInfoWindow(infoWindow, point); //开启信息窗口
	map.enableScrollWheelZoom(true);
	function change_day(butid) {

		//alert(alertstr);
		var secc = document.getElementById("section1");
		num = butid.split('but')[1];
		secc.innerHTML = doc[num];
		var point = new BMap.Point(geo[num][0], geo[num][1]);
		map.centerAndZoom(point, 24); // 初始化地图,设置中心点坐标和地图级别
		var infoWindow = new BMap.InfoWindow(content[num]); // 创建信息窗口对象
		map.openInfoWindow(infoWindow, point); //开启信息窗口
	}
	function htmlEncode(value) {
		//create a in-memory div, set it's inner text(which jQuery automatically encodes)
		//then grab the encoded contents back out.  The div never exists on the page.
		return $('<div/>').text(value).html();
	}

	function htmlDecode(value) {
		return $('<div/>').html(value).text();
	}

	// 百度地图API功能
</script>
<script type="text/javascript">
	$(document).ready(function() {
		size_li = $("#comments li").size();
		x = 5;
		$('#comments li:lt(' + x + ')').show();
		$('#loadMore').click(function() {
			x = (x + 5 <= size_li) ? x + 5 : size_li;
			$('#comments li:lt(' + x + ')').show();
		});

	});
</script>
<script type="text/javascript">
if(<%=session.getAttribute("uid")==null %>){
var but=document.getElementById("timeline_post_btn").classList.add('disabled');
}
</script>
<script type="text/javascript">
	var getUrlParameter = function getUrlParameter(sParam) {
		var sPageURL = decodeURIComponent(window.location.search.substring(1)), sURLVariables = sPageURL
				.split('&'), sParameterName, i;

		for (i = 0; i < sURLVariables.length; i++) {
			sParameterName = sURLVariables[i].split('=');

			if (sParameterName[0] === sParam) {
				return sParameterName[1] === undefined ? true
						: sParameterName[1];
			}
		}
	};
	$("form#goform").submit(function(event) {

		event.preventDefault();

		document.getElementById("timeline_post_btn").innerHTML = "Wait...";
		document.getElementById("timeline_post_btn").disabled = true;

		if (comment == "") {
			comment.focus();
			return (false);
		} else {

			var formData = $('textarea#comment').val();
			var routeid = getUrlParameter('routeid');
			console.log("PRINT");
			console.log(formData, routeid);
			$.ajax({
				type : "POST",
				url : "RoutecommentPro",
				data : {
					comment : formData,
					routeid : routeid
				},

				success : function() {
					
							location.reload();

					

				},
				error : function() {
					
							location.reload();
					
				},
			});
		};

	});
</script>
</html>



