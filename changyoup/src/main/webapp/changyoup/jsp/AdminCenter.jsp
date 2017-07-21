<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Admin Page</title>


<%@include file="CommonHead.jsp"%>
</head>

<body>
	<div id="fh5co-wrapper">
		<div id="fh5co-page">
			<%@include file="Navbar.jsp"%>
			<div class="fh5co-section">
				<div class="container">
					<div class="row">
						<b>本页面是管理员中心，管理员身份的用户可以在此进行以下操作：</b>
						<ul>
							<li><a href="AddRouteInfo">发布旅游路线</a>
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