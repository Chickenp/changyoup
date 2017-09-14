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
						<li id="homeli"><a href="Home">Home</a></li>
						<li id="routeli"><a href="allRoutes">Routes</a></li>
						<li id="planli"><a href="allPlan">Plans</a></li>
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
							if ((session.getAttribute("uid") == null) || (session.getAttribute("uid") == "")) {
						%>
						<li><a data-toggle="modal" href="#myModal">User Center</a></li>
						<%
							} else {
								int NavUid;
								NavUid=(Integer) session.getAttribute("uid");
								if ((session.getAttribute("role") == null) || (Integer) session.getAttribute("role") == 1
										|| (session.getAttribute("role") == "")) {
						%>
						<li id="accountli"><a href="Account?id=<%=NavUid%>">User Center</a></li>
						<%
							} else if ((Integer) session.getAttribute("role") == 0) {
						%>
						<li id="adminaccountli"><a href="Admincenter">Admin Center</a></li>
						<%
							}
							}
							if ((session.getAttribute("uid") == null) || (session.getAttribute("uid") == "")) {
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