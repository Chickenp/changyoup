<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="model.UserInfo"%>
<%@ page import="java.sql.Date"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<%
	UserInfo userinfo = new UserInfo();
	if (request.getAttribute("info") != null) {
		userinfo = (UserInfo) request.getAttribute("info");
	}
	int id = userinfo.getId();
	int sex = userinfo.getSex();
	String email = userinfo.getEmail();
	String nickname = userinfo.getNickname();
	Date birthday = userinfo.getBirthday();
%>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title><%=nickname%>'s UserCenter</title>
<!-- load stylesheets -->
<link rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=Open+Sans:300,400">
<!-- Google web font "Open Sans", https://fonts.google.com/ -->
<link rel="stylesheet"
	href="../Usercenter/font-awesome-4.6.3/css/font-awesome.min.css">
<!-- Font Awesome, http://fontawesome.io/ -->
<link rel="stylesheet" href="../Usercenter/css/bootstrap.min.css">
<!-- Bootstrap style, http://v4-alpha.getbootstrap.com/ -->
<link rel="stylesheet" href="../Usercenter/css/magnific-popup.css">
<!-- Magnific pop up style, http://dimsemenov.com/plugins/magnific-popup/ -->
<link rel="stylesheet" href="../Usercenter/css/templatemo-style.css">
<!-- Templatemo style -->

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
          <![endif]-->

</head>
<%
	int uid = 0;
	uid=(Integer)session.getAttribute("uid");
%>
<body>
	<div class="navbar-default sidebar" role="navigation">
		<div class="sidebar-nav navbar-collapse">
			<ul class="nav" id="side-menu">
				<li><a href="Account?id=<%=uid%>" class="active"><i
						class="fa fa-user fa-fw"></i> Userinfo</a></li>
				<li><a href="allPlansPro"><i class="fa fa-book fa-fw"></i>
						我的日志</a></li>
			</ul>
		</div>

		<!-- /.sidebar-collapse -->
	</div>
	<div id="page-wrapper">
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">UserInfo</h1>
			</div>
		</div>
		<!-- /.row -->
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<!-- /.panel-heading -->
					<div class="panel-body">
						<div class="dataTable_wrapper">
							<table class="table table-striped table-bordered table-hover"
								id="dataTables">
								<thead>
									<tr>
										<th>Nickname</th>
										<th>Email</th>
										<th>Sex</th>
										<th>Area</th>
									</tr>
								</thead>
								<tbody>
									<%
										
									%>
									<tr>
										<td><%=userinfo.getNickname()%></td>
										<td><%=userinfo.getEmail()%></td>
										<td><%=userinfo.getSex()%></td>
										<td><%=userinfo.getArea()%></td>
									</tr>
								</tbody>
							</table>
							<button class="btn btn-default" type="button" id="editinfo"
								data-id="<%=userinfo.getId()%>">Edit Info</button>
						</div>
					</div>
					<!-- /.panel-body -->
				</div>
				<!-- /.panel -->
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->
	</div>
	<!-- /#page-wrapper -->
	</div>

	<script src="../js/userinfo.js"></script>
</body>
</html>