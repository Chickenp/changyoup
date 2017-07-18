<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="model.Planinfo"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>我的日志</title>


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
	<div id="container-fluid">
		<%
			for (int i = 0; i < plans.size(); i++) {
				Planinfo plan = plans.get(i);
		%>
		<div class="row">
			<div class="col-md-6">
				<p>
					标题：<%=plan.getTitle()%></p>
				<p>
					发布人：<%=plan.getPublisher()%></p>
			</div>
			<div class="col-md-6">
				<input type="button" class="btn btn-primary"
						onclick="window.location.href='viewPlan?Planid=<%=plan.getPlanid()%>'"
						value="查看攻略"></input>
				<input type="button" class="btn btn-primary"
						onclick="window.location.href='editPlan?Planid=<%=plan.getPlanid()%>'"
						value="修改攻略"></input>
			</div>
		</div>
		<%
			}
		%>

		<script type="text/javascript" src="<%=path%>/changyoup/js/jquery.min.js"></script>
		<script type="text/javascript"src="<%=path%>/changyoup/js/bootstrap.min.js"></script>
		<script type="text/javascript">
		
		
		</script>
</body>
</html>