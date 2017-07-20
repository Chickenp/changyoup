<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<%
    String cplan = "";
			int uid = 10;
			int pubid = 0;
			int planid = 0;
			String title = "";
			if (session.getAttribute("planid") != null) {
				planid = (Integer) session.getAttribute("planid");
			}
			if (session.getAttribute("uid") != null) {
				uid = (Integer) session.getAttribute("uid");
			}

			if (request.getAttribute("cplan") != null) {
				cplan = (String) request.getAttribute("cplan");
			}
			if (request.getAttribute("pubid") != null) {
				pubid = (Integer) request.getAttribute("pubid");
			}
			if (request.getAttribute("new") == null) {
				if (pubid != uid) {
%>
<script type="text/javascript" language="javascript">
	alert("这个攻略属于别的用户，您不能修改");
	top.location.href = "Account";
</script>
<%
    }
			}
			if (request.getAttribute("title") != null) {
				title = (String) request.getAttribute("title");
			}
			String path = request.getContextPath();
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Listing &mdash; 100% Free Fully Responsive HTML5 Template
</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
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
<script src="/changyoup/changyoup/js/modernizr-2.6.2.min.js"></script>
<!-- FOR IE9 below -->
<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
<style>
.tags {
	padding: 0;
	position: relative;
	margin-left: 200px;
	margin-right: auto;
	bottom: -12px;
	list-style: none;
	display: block;
}

.tags li, .tags a {
	margin-left: auto;
	margin-right: auto;
	float: left;
	height: 24px;
	line-height: 24px;
	position: relative;
	font-size: 11px;
}

.tags a {
	margin-left: 20px;
	padding: 0 10px 0 12px;
	background: #0089e0;
	color: #fff;
	text-decoration: none;
	-moz-border-radius-bottomright: 4px;
	-webkit-border-bottom-right-radius: 4px;
	border-bottom-right-radius: 4px;
	-moz-border-radius-topright: 4px;
	-webkit-border-top-right-radius: 4px;
	border-top-right-radius: 4px;
}

.tags a:before {
	content: "";
	float: left;
	position: absolute;
	top: 0;
	left: -12px;
	width: 0;
	height: 0;
	border-color: transparent #0089e0 transparent transparent;
	border-style: solid;
	border-width: 12px 12px 12px 0;
}

.tags a:after {
	content: "";
	position: absolute;
	top: 10px;
	left: 0;
	float: left;
	width: 4px;
	height: 4px;
	-moz-border-radius: 2px;
	-webkit-border-radius: 2px;
	border-radius: 2px;
	background: #fff;
	-moz-box-shadow: -1px -1px 2px #004977;
	-webkit-box-shadow: -1px -1px 2px #004977;
	box-shadow: -1px -1px 2px #004977;
}

.tags a:hover {
	background: #555;
}

.tags a:hover:before {
	border-color: transparent #555 transparent transparent;
}
</style>
<script language="javascript">
	function confirmclear() {
		if (confirm("确定要清除所有内容？\n注意！此操作不可撤销！")) {
			editor.txt.clear();
		}
	}

</script>
<link href="<%=path%>/changyoup/css/Releaseplan.css" rel="stylesheet"
	type="text/css">
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
													if ((session.getAttribute("role") == null)
															|| (Integer) session.getAttribute("role") == 1
															|| (session.getAttribute("role") == "")) {
									%>
									<li><a href="Account">User Center</a></li>
									<%
									    } else if ((Integer) session.getAttribute("role") == 0) {
									%>
									<li><a href="examinePlan">Examine Plan</a></li>
									<%
									    }
												}
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
			<!-- 			<form name="planform"> -->
			<div class="fh5co-hero">
				<div class="fh5co-overlay"></div>
				<div class="fh5co-cover text-center"
					data-stellar-background-ratio="0.5"
					style="background-image: url(/changyoup/changyoup/images/cover_bg_1.jpg);">
					<div class="desc animate-box fadeInUp animated">
						<h2>Release New Plan</h2>

						<p></p>
						<p></p>
						<font style="color: #ffffff; font-size: 40px;">标题:</font> <input
							name="title" id="title" type="text" maxlength="20" style="color:#000000"
							value="<%=title%>">&nbsp; <br>（注意：最多20个字！）
						<p>
						<div>
							<p>
							<p>
							<p>
								<input type="radio" name="plantype" id="plantype"
									value="individual" style="width: 2em; height: 2em;" /> <label
									for="plantype" class="radio-inline"
									style="font-size: 50px; font-weight: bold; color: #ffffff;">自助游&nbsp;</label>
								<input type="radio" name="plantype" id="plantype" value="group"
									style="width: 2em; height: 2em;" /> <label for="plantype"
									class="radio-inline"
									style="font-size: 50px; font-weight: bold; color: #ffffff;">跟团游&nbsp;</label>
								<input type="radio" name="plantype" id="plantype"
									value="selfdrive" style="width: 2em; height: 2em;" /> <label
									for="plantype" class="radio-inline"
									style="font-size: 50px; font-weight: bold; color: #ffffff;">自驾游</label>
								<!-- 								<label class="radio-inline"><input type="radio" -->
								<!-- 									name="plantype" id="plantype" value="group" />跟团游&nbsp;</label>  -->
								<!-- 								<label class="radio-inline"><input type="radio" -->
								<!-- 									name="plantype" id="plantype" value="selfdrive" />自驾游</label> -->
							</p>
						</div>
					</div>

				</div>

			</div>



			<div class="fh5co-listing">
				<div class="container">
					<br> <br> <br> <br> <br>
					<div id="toolbar_div" class="toolbar"></div>
					<div id="text_div" class="text" style="color: #ffffff;">
						<%=cplan%>
					</div>
				</div>
			</div>
			<!-- 			</form> -->
			<div align="center">
				<button id="btnpub" class="btn btn-primary" >发布路线</button>
				<button onclick="confirmclear()" class="btn btn-primary" >清空内容</button>
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

	<script type="text/javascript"
		src="<%=path%>/changyoup/js/wangEditor/wangEditor.min.js"></script>
	<script type="text/javascript"
		src="<%=path%>/changyoup/js/jquery.min.js"></script>
	<script type="text/javascript">
        	var E = window.wangEditor;
        	var editor = new E('#toolbar_div','#text_div');	// 或者 var editor = new E( document.getElementById('#editor') )
        	editor.customConfig.uploadImgShowBase64 = true ;  // 使用 base64 保存图片
        	editor.create();
        	
            document.getElementById('btnpub').addEventListener('click', function () {
        		// 读取 text
        		var title = $("input[name='title']").val();
        		var plan=editor.txt.html();
        		var publisher=<%=uid%>;
        		console.log(publisher);
        		<%String url = "editPlan?planid=" + planid;
        		if (session.getAttribute("planid") != null) {%>
        		jQuery.ajax({	
      				type:'POST',
					url:'editConfirm',
					processData : true,
					dataType : "text",
					data : {
					title:title,
					plan : plan,
					publisher:publisher
					},
					success : function(data){
						window.location.href="<%=url%>";
					}
				})
        		<%} else {%>
        		jQuery.ajax({	
      				type:'POST',
					url:'savePlan',
					processData : true,
					dataType : "text",
					data : {
					title:title,
					plan : plan,
					publisher:publisher
					},
					success : function(data){
						window.location.href="<%=url%>";
								}
							})
	<%}%>
		}, false)

	</script>

</body>
</html>

