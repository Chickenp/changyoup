<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="model.UserInfo"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<% String username=(String)session.getAttribute("users");%>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title><%=username %>的个人中心</title>

	<link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
	<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link href="../css/Usercenter.css" rel="stylesheet">
	
</head>
<body>
<%
	UserInfo userinfo=new UserInfo();
	if(request.getAttribute("userinfo")!=null){
		userinfo=(UserInfo)request.getAttribute("userinfo");
	}
%>


<div id="wrapper">
<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">

    <div class="navbar-header">
        <a class="navbar-brand" href="#">个人中心</a>
    </div>
    
    <div class="navbar-default sidebar" role="navigation">
    <div class="sidebar-nav navbar-collapse">
        <ul class="nav" id="side-menu">
            <li class="active"><a href="Account">个人资料</a></li>
            <li><a href="#">SVN</a></li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    Java
                    <b class="caret"></b>
                </a>
                <ul class="dropdown-menu">
                    <li><a href="#">jmeter</a></li>
                    <li><a href="#">EJB</a></li>
                    <li><a href="#">Jasper Report</a></li>
                    <li class="divider"></li>
                    <li><a href="#">分离的链接</a></li>
                    <li class="divider"></li>
                    <li><a href="#">另一个分离的链接</a></li>
                </ul>
            </li>
        </ul>
    </div>
    </div>
</nav>
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
								<th>ID</th>
								<th>Nickname</th>
								<th>Email</th>
								<th>Area</th>
								<th>Sex</th>
								<th>Birthday</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><%=userinfo.getId()%></td>
								<td><%=userinfo.getNickname()%></td>
								<td><%=userinfo.getEmail()%></td>
								<td><%=userinfo.getArea()%></td>
								<td><%=userinfo.getSex()%></td>
								<td><%=userinfo.getBirthday()%></td>
								<td>
									<button class="btn btn-default btn-info" type="button"
										data-id="<%=userinfo.getId()%>"
										data-nickname="<%=userinfo.getNickname()%>"
										data-email="<%=userinfo.getEmail()%>"
										data-area="<%=userinfo.getArea()%>"
										data-sex="<%=userinfo.getSex()%>"
										data-birthday="<%=userinfo.getBirthday()%>">
										修改信息
										<i class="fa fa-edit"></i>
									</button>
								</td>
							</tr>
						</tbody>
					</table>
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
</body>
</html>