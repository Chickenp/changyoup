<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Admin Page</title>

<%@include file="logincheckadmin.jsp"%>
<%@include file="CommonHead.jsp"%>
</head>

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
						<h2>Administrator Center</h2>
					</div>
				</div>
			</div>
			<div class="fh5co-listing">
				<div class="container">
					<div class="row">
						<div class="col-md-3 col-sm-3 fh5co-item-wrap">
							<a class="fh5co-listing-item" href="newRoute"> <img
								src="/changyoup/changyoup/images/toolicons/Librariesalt.png"
								alt="发布旅游线路" class="img-responsive">
								<div class="fh5co-listing-copy">
									<h2>发布旅游线路</h2>
									<span class="icon"> <i class="icon-chevron-right"></i>
									</span>
								</div>
							</a>
						</div>
						<div class="col-md-3 col-sm-3 fh5co-item-wrap">
							<a class="fh5co-listing-item" href="allRoutes"> <img
								src="/changyoup/changyoup/images/toolicons/Pin.png"
								alt="旅游路线一览" class="img-responsive">
								<div class="fh5co-listing-copy">
									<h2>旅游路线一览</h2>
									<span class="icon"> <i class="icon-chevron-right"></i>
									</span>
								</div>
							</a>
						</div>
						<div class="col-md-3 col-sm-3 fh5co-item-wrap">
							<a class="fh5co-listing-item" href="examinePlan"> <img
								src="/changyoup/changyoup/images/toolicons/Tasks.png"
								alt="审核用户发布的旅游攻略" class="img-responsive">
								<div class="fh5co-listing-copy">
									<h2>审核旅游攻略</h2>
									<span class="icon"> <i class="icon-chevron-right"></i>
									</span>
								</div>
							</a>
						</div>
						<div class="col-md-3 col-sm-3 fh5co-item-wrap">
							<a class="fh5co-listing-item" href="AddRouteInfo"> <img
								src="/changyoup/changyoup/images/toolicons/Pin.png"
								alt="设置旅游攻略是否在首页显示" class="img-responsive">
								<div class="fh5co-listing-copy">
									<h2>置顶旅游攻略</h2>
									<span class="icon"> <i class="icon-chevron-right"></i>
									</span>
								</div>
							</a>
						</div>
						<div class="col-md-3 col-sm-3 fh5co-item-wrap">
						<%	int NavUid;
							NavUid=(Integer) session.getAttribute("uid"); %>
							<a class="fh5co-listing-item" href="Account?id=<%=NavUid%>"> <img
								src="/changyoup/changyoup/images/toolicons/UserNo-Frame.png"
								alt="查看管理员个人中心" class="img-responsive">
								<div class="fh5co-listing-copy">
									<h2>我的个人中心</h2>
									<span class="icon"> <i class="icon-chevron-right"></i>
									</span>
								</div>
							</a>
						</div>
					</div>
				</div>
			</div>
			<div class="fh5co-section">
				<div class="container">
					<div class="row">
						<b>本页面是管理员中心，管理员身份的用户可以在此进行以下操作：</b>
						<ul>
							<li><a href="newRoute">发布旅游路线</a>
							<li><a href="examinePlan">审核用户发布的旅游攻略</a>
							<li><a href="topPlan">设置旅游攻略是否在首页显示</a>
							<li><a href="#">其他还没有想到的功能</a>
							<li><a href="#">谁想到什么新功能也一起加上来好了</a>
						</ul>
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