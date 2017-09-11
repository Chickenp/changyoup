<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="model.Routeinfo"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>All Routes</title>
</head>
<%
	ArrayList<Routeinfo> routes = new ArrayList<Routeinfo>();
	if (request.getAttribute("routes") != null) {
		routes = (ArrayList<Routeinfo>) request.getAttribute("routes");
	}
%>


<body>
					<%
						for (int i = 0; i < routes.size(); i++) {
							Routeinfo route = routes.get(i);
					%>
					<p>routeid=<%=route.getRouteid()%></p>
					<p>routedays=<%=route.getRoutedays()%></p>
					<p>routeintro=<%=route.getRouteintro()%></p>
					<input type="button" class="btn btn-primary"
						onclick="window.location.href='TravelRoute?routeid=<%=route.getRouteid()%>'"
						value="查看路线"></input>
					<%
						}
					%>

</body>
</html>