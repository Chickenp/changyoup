<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="model.Planinfo"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Examine plans</title>
<%@include file="CommonHead.jsp"%>
</head>
<%
	ArrayList<Planinfo> plans = new ArrayList<Planinfo>();
	if (request.getAttribute("unpass") != null) {
		plans = (ArrayList<Planinfo>) request.getAttribute("unpass");
	}
%>

<body>
	<div id="fh5co-wrapper">
		<div id="fh5co-page">
			<%@include file="Navbar.jsp"%>
			<div class="fh5co-section">
				<div class="container">
					<%
						for (int i = 0; i < plans.size(); i++) {
							Planinfo plan = plans.get(i);
					%>
					<div class="row">
						<a href=" viewPlan?planid=<%=plan.getPlanid()%>"><p>
								title=<%=plan.getTitle()%></p></a>
						<p>
							publisher=<%=plan.getPublisher()%></p>
					</div>
					<%
						}
					%>
				</div>
			</div>
			<%@include file="Foot.jsp"%>


		</div>
		<!-- END fh5co-page -->

	</div>
	<!-- END fh5co-wrapper -->

</body>
</html>