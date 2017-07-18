<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View plan</title>
</head>

<body>
	<%
		String cplan = "";
	    int planid = 0;
		if (request.getAttribute("cplan") != null) {
			cplan = (String) request.getAttribute("cplan");
		}
		if (session.getAttribute("planid") != null) {
			planid = (Integer) session.getAttribute("planid");
		}
	%>

	<%=cplan%>
	
	<%
	int role = 1;
	if (session.getAttribute("role") != null){
		role = (Integer) session.getAttribute("role");
	}
	if (role==0){
	%>
	<a href="passPlan?planid=<%= planid %>">pass</a>
	<%} %>
</body>
</html>