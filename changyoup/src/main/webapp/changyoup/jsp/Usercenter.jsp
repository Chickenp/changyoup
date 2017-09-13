<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="model.UserInfo"%>
<%@ page import="java.sql.Date"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<%
	String path = request.getContextPath();
	UserInfo userinfo = new UserInfo();
	if (request.getAttribute("info") != null) {
		userinfo = (UserInfo) request.getAttribute("info");
	}
	int id = userinfo.getId();
	int sex = userinfo.getSex();
	String gender = "";
	if (sex == 0) {
		gender = "未知";
	} else if (sex == 1) {
		gender = "男";
	} else if (sex == 2) {
		gender = "女";
	}
	String email = userinfo.getEmail();
	String nickname = userinfo.getNickname();
	Date birthday = userinfo.getBirthday();
	String area = userinfo.getArea();
%>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title><%=nickname%>'s UserCenter</title>
<!-- load stylesheets -->
<%@include file="CommonHead.jsp"%>
<link rel="stylesheet" href="/changyoup/changyoup/css/Usercenter.css" rel="stylesheet"
	type="text/css">
</head>
<%
	int uid = 0;
	if (session.getAttribute("uid") != null) {
		uid = (Integer) session.getAttribute("uid");
	}
%>
<body>
	<div id="fh5co-wrapper">
		<div id="fh5co-page">
			<%@include file="Navbar.jsp"%>

			<div class="fh5co-section">
				<div class="container">
					<div class="row">
						<div class="col-lg-12">
							<h1 class="page-header">UserInfo</h1>
						</div>
					</div>
					<!-- /.row -->
					<div class="row">
						<div class="col-md-4">
						<img src="<%=path%>/changyoup/images/defaultuser.jpg"
						class="img-responsive mb20">
						</div>
						<div class="col-md-8">
							<div class="row">
								<div class="col-md-4">
									<h3>Nickname:</h3>
								</div>
								<div class="col-md-4">
									<h3><%=nickname%></h3>
								</div>
							</div>
							<div class="row">
								<div class="col-md-4">
									<h3>Email:</h3>
								</div>
								<div class="col-md-4">
									<h3><%=email%></h3>
								</div>
							</div>
							<div class="row">
								<div class="col-md-4">
									<h3>Gender:</h3>
								</div>
								<div class="col-md-4">
									<h3><%=gender%></h3>
								</div>
							</div>
							<div class="row">
								<div class="col-md-4">
									<h3>Area:</h3>
								</div>
								<div class="col-md-4">
									<h3><%=area%></h3>
								</div>
							</div>
							
							<%if (uid==id){ %>
							<!-- 修改个人信息 -->
							<button class="btn btn-default"
								onclick="window.open('UpdateAccount?id=<%=uid%>')" type="button"
								id="editinfo">Edit Info</button>
							<%} %>	
							
							<div class="row">
								<a href="allPlansPro"><i class="fa fa-book fa-fw"></i>
									我的日志</a>
							</div>

						</div>
						<!-- /.col-lg-12 -->
					</div>
					<!-- /.row -->
				</div>
				<!-- section -->
			</div>
			<%@include file="Foot.jsp"%>
		</div>
	</div>
	<!-- /#page-wrapper -->

	<script src="<%=path%>/changyoup/js/jquery.min.js"></script>
	<script src="<%=path%>/changyoup/js/bootstrap.min.js"></script>
	<script src="<%=path%>/changyoup/js/userinfo.js"></script>
	<script>
		var div1 = document.getElementById('accountli');
		if (div1!=null) div1.setAttribute("class", "active");
		var div2 = document.getElementById('adminaccountli');
		if (div2!=null) div2.setAttribute("class","active");
	</script>
	
	
</body>
</html>