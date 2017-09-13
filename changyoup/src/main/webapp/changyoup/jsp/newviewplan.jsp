<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="model.Route"%>
<%@ page import="model.Comment" %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Listing &mdash; 100% Free Fully Responsive HTML5 Template
</title>
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
<meta name="description" content="Free HTML5 Template by FREEHTML5" />
<meta name="keywords"
	content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />

<%@include file="CommonHead.jsp"%>

</head>
<body>
    <%
		String cplan = "";
        String title = "";
	    int planid = 0;
	    String point="0.0";
	    int yourpoint=0;
	    ArrayList<Comment> comments =new ArrayList<Comment>();
		if (request.getAttribute("cplan") != null) {
			cplan = (String) request.getAttribute("cplan");
		}
		if (session.getAttribute("planid") != null) {
			planid = (Integer) session.getAttribute("planid");
		}
		if (request.getAttribute("title") != null) {
			title = (String) request.getAttribute("title");
		}
		if (request.getAttribute("comments") != null) {
			comments = (ArrayList<Comment>) request.getAttribute("comments");
			    }
		if (request.getAttribute("point") != null) {
		    point=(String)request.getAttribute("point");
		    }
		if (request.getAttribute("Yourpoint") != null) {
			yourpoint=(Integer)request.getAttribute("Yourpoint");
		}
	%>
    
	<div id="fh5co-wrapper">
		<div id="fh5co-page">
			<%@include file="Navbar.jsp"%>

			<div class="modal fade" id="myModal" role="dialog">
				<div class="modal-dialog">

					<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header" style="padding: 35px 50px;">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4>
								<span class="glyphicon glyphicon-lock"></span> You haven't
								login!
							</h4>
						</div>

					</div>

				</div>
			</div>
			<div class="fh5co-hero">
				<div class="fh5co-overlay"></div>
				<div class="fh5co-cover text-center"
					data-stellar-background-ratio="0.5"
					style="background-image: url(/changyoup/changyoup/images/cover_bg_1.jpg);">
					<div class="desc animate-box">
						<h2><%=title %></h2>
						<!-- <span>Lovely Crafted by <a href="#" target="_blank" class="fh5co-site-name">FREEHTML5.co</a></span> -->
						<span><a class="btn btn-primary btn-lg" href="#">Get
								Start</a></span>
					</div>
				</div>

			</div>

			<div class="modal fade" id="login-modal" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true"
				style="display: none;">
				<div class="modal-dialog">
					<div class="loginmodal-container">
						<h1>Login to Your Account</h1>
						<br>
						<form method="post" action="Login">
							<input type="text" name="username" placeholder="username">
							<input type="password" name="password" placeholder="password">
							<input type="submit" name="Submits"
								class="login loginmodal-submit" value="login">
						</form>

						<div class="login-help">
							<a href="register.jsp">Register</a> - <a href="#">Forgot
								Password</a>
						</div>
					</div>
				</div>
			</div>
            <div class="fh5co-section">
				<div class="container">
					<div class="row">
			<%=cplan %>
			</div>
			</div>
			</div>
			<%
	int role = 1;
	if (session.getAttribute("role") != null){
		role = (Integer) session.getAttribute("role");
	}
	if (role == 0){
	%>
	<button onclick="pass()" style="color:#000;">pass</button>&nbsp;
	<!-- <a href="passPlan?planid=<%= planid %>">pass</a>-->
	<%} %>
       



			<div class="fh5co-section">

				<div class="container">
					<div id="container2222"></div>

					<div class="row">
						<div class="col-md-6 fh5co-news">
							<h3>News</h3>
							<ul>
								<li><a href="#"> <span class="fh5co-date">Sep.
											10, 2016</span>
										<h3>Newly done Bridge of London</h3>
										<p>Lorem ipsum dolor sit amet consectetur adipisicing
											elit. Accusamus reprehenderit!</p>
								</a></li>
								<li><a href="#"> <span class="fh5co-date">Sep.
											10, 2016</span>
										<h3>Newly done Bridge of London</h3>
										<p>Lorem ipsum dolor sit amet consectetur adipisicing
											elit. Accusamus reprehenderit!</p>
								</a></li>
								<li><a href="#"> <span class="fh5co-date">Sep.
											10, 2016</span>
										<h3>Newly done Bridge of London</h3>
										<p>Lorem ipsum dolor sit amet consectetur adipisicing
											elit. Accusamus reprehenderit!</p>
								</a></li>
							</ul>
						</div>
						
					</div>
				</div>
				<p>
				<div class="container">
					Average Rating:<%=point %>
<table>
	<tr>
		<td>Rating!</td>
		<td><div id="stars-default"><input type=hidden name"rating"/></div></td>
	</tr>
	
</table>
</div>
					<div class="container">
						<h2>Comments</h2>
						<ul id="comments" class="list-group">
							<%
							    int i=0;
																																			for(i=0;i<(comments.size());i++) {
																																			Comment comment=comments.get(i);
							%>
							<li>
								<div class="panel panel-primary">
									<div class="panel-heading">User<%=comment.getUserid()%></div>
									<div class="panel-body" style="background:#000000;"><%=comment.getText()%></div>
								</div>
							</li>
							<%
							    }
							%>
						</ul>
						<span><button id="loadMore" class="btn btn-primary"
								sytle="float:center;">Load More</button></span>
					</div>
					<p>
					<form method="post" name="goform" id="goform"
						enctype="multipart/form-data">
						<div class="form-group">
							<label for="comment">Comment:</label>
							<textarea class="form-control" rows="5" id="comment"></textarea>
							<br> <input id="timeline_post_btn" type="submit"
								name="Submits" class="btn btn-primary" value="Comment"
								style="float: right;">
						</div>
					</form>
			</div>

			<footer>
				<div id="footer">
					<div class="container">
						<div class="row">
							<div class="col-md-6 col-md-offset-3 text-center">
								<p class="fh5co-social-icons">
									<a href="#"><i class="icon-twitter2"></i></a> <a href="#"><i
										class="icon-facebook2"></i></a> <a href="#"><i
										class="icon-instagram"></i></a> <a href="#"><i
										class="icon-dribbble2"></i></a> <a href="#"><i
										class="icon-youtube"></i></a>
								</p>

							</div>
						</div>
					</div>
				</div>
			</footer>


		</div>
		<!-- END fh5co-page -->

	</div>
	<!-- END fh5co-wrapper -->



</body>
<script type="text/javascript">
if(<%=session.getAttribute("uid")==null %>){
var but=document.getElementById("timeline_post_btn").classList.add('disabled');
}
</script>
<script type="text/javascript">

function pass(){
	var planid=<%=planid%>;
	jQuery.ajax({
		type:'POST',
		url:'passPlan',
		processData : true,
		dataType : "text",
		data : {
			planid:planid,
		},
		success : function(data){
			window.location.href="examinePlan";
		}
	})
	//document.getElementById("content").value=editor.txt.html();
	//document.forms.routeform.action="ReleaseRoute";
	//document.forms.routeform.submit();
}

	var getUrlParameter = function getUrlParameter(sParam) {
		var sPageURL = decodeURIComponent(window.location.search.substring(1)), sURLVariables = sPageURL
				.split('&'), sParameterName, i;

		for (i = 0; i < sURLVariables.length; i++) {
			sParameterName = sURLVariables[i].split('=');

			if (sParameterName[0] === sParam) {
				return sParameterName[1] === undefined ? true
						: sParameterName[1];
			}
		}
	};
	$("form#goform").submit(function(event) {

		event.preventDefault();

		document.getElementById("timeline_post_btn").innerHTML = "Wait...";
		document.getElementById("timeline_post_btn").disabled = true;

		if (comment == "") {
			comment.focus();
			return (false);
		} else {

			var formData = $('textarea#comment').val();
			var planid = getUrlParameter('planid');
			console.log("PRINT");
			
			$.ajax({
				type : "POST",
				url : "CommentPro",
				data : {
					comment : formData,
					planid : planid
				},

				success : function() {
					
							location.reload();

					

				},
				error : function() {
					
							location.reload();
					
				},
			});
		};

	});
</script>
<script>(function ( $ ) {
 
    $.fn.rating = function( method, options ) {
		method = method || 'create';
        // This is the easiest way to have default options.
        var settings = $.extend({
            // These are the defaults.
			limit: 5,
			value: <%=yourpoint%>,
			glyph: "glyphicon-star",
            coloroff: "gray",
			coloron: "gold",
			size: "2.0em",
			cursor: "default",
			onClick: function () { 
				if(<%=session.getAttribute("uid")==null %>){
				alert('Rate after you login');}
				else{
				var point=this.attr('data-rating');
				var planid = getUrlParameter('planid');
				$.ajax({
					type : "POST",
					url : "PlanRatingPro",
					data : {
						point:point,
						planid:planid
					},

					success : function() {
						
								location.reload();

						

					},
					error : function() {
						
								location.reload();
						
					},
				});}
			},
            endofarray: "idontmatter"
        }, options );
		var style = "";
		style = style + "font-size:" + settings.size + "; ";
		style = style + "color:" + settings.coloroff + "; ";
		style = style + "cursor:" + settings.cursor + "; ";
	

		
		if (method == 'create')
		{
			//this.html('');	//junk whatever was there
			
			//initialize the data-rating property
			this.each(function(){
				attr = $(this).attr('data-rating');
				if (attr === undefined || attr === false) { $(this).attr('data-rating',settings.value); }
			})
			
			//bolt in the glyphs
			for (var i = 0; i < settings.limit; i++)
			{
				this.append('<span data-value="' + (i+1) + '" class="ratingicon glyphicon ' + settings.glyph + '" style="' + style + '" aria-hidden="true"></span>');
			}
			
			//paint
			this.each(function() { paint($(this)); });

		}
		if (method == 'set')
		{
			this.attr('data-rating',options);
			this.each(function() { paint($(this)); });
		}
		if (method == 'get')
		{
			return this.attr('data-rating');
		}
		//register the click events
		this.find("span.ratingicon").click(function() {
			rating = $(this).attr('data-value')
			$(this).parent().attr('data-rating',rating);
			paint($(this).parent());
			settings.onClick.call( $(this).parent() );
		})
		function paint(div)
		{
			rating = parseInt(div.attr('data-rating'));
			div.find("input").val(rating);	//if there is an input in the div lets set it's value
			div.find("span.ratingicon").each(function(){	//now paint the stars
				
				var rating = parseInt($(this).parent().attr('data-rating'));
				var value = parseInt($(this).attr('data-value'));
				if (value > rating) { $(this).css('color',settings.coloroff); }
				else { $(this).css('color',settings.coloron); }
			})
		}

    };
 
}( jQuery ));

$(document).ready(function(){

	$("#stars-default").rating();
	$("#stars-green").rating('create',{coloron:'green',onClick:function(){ alert('rating is ' + this.attr('data-rating')); }});
	$("#stars-herats").rating('create',{coloron:'red',limit:10,glyph:'glyphicon-heart'});	
});
</script>
</html>



