<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Create a New Route</title>
	<script src="/changyoup/changyoup/js/jquery.min.js"></script>
	<%@include file="logincheckadmin.jsp"%>
	<%@include file="CommonHead.jsp"%>
</head>


<body>
	<div id="fh5co-wrapper">
		<div id="fh5co-page">
			<%@include file="Navbar.jsp"%>

			<div class="fh5co-hero">
				<div class="fh5co-overlay"></div>
				<div class="fh5co-cover text-center"
					data-stellar-background-ratio="0.5"
					style="background-image: url(/changyoup/changyoup/images/beachchair.jpg);">
					<div class="desc animate-box">
						<div class="container" style="width:500px;">
							<form>
								<div style="float:left;">天数：
									<input type=int name="routedays" id="routedays" onblur="check()"
										style="width:200px;color:#000;">
								</div>
								<br><br>
								<div style="float:left;">标题：
									<input name="routetitle" id="routetitle" type="text" maxlength="20" 
										onblur="check()" style="width:200px;color:#000;">&nbsp;（注意：最多20个字！）
								</div>
								<br><br>
								<!-- 
								<div style="float:left;">路线类型：</div>
								<div>
									<p>
										<input type="radio" name="routetype" id="routetype" value="1"/>自助游&nbsp;
										<input type="radio" name="routetype" id="routetype" value="2"/>跟团游&nbsp;
										<input type="radio" name="routetype" id="routetype" value="3"/>自驾游
									</p>
								</div>
				 				-->
								<div style="float:left;">简介：</div>
								<div>
									<p><textarea name="routeintro" id="routeintro" type="text" maxlength="200"
										style="width:400px;height:200px;resize:none;color:#000;"></textarea></p>
								</div>
							</form>
							<button id="confirm" onclick="submit()" disabled="true" style="color:#000;">确认</button>
						</div>
					</div>
				</div>
			</div>
			
			
			<%@include file="Foot.jsp"%>

		</div>
		<!-- END fh5co-page -->
	</div>
	<!-- END fh5co-wrapper -->
	
	<script>
		function submit(){
			var routedays = document.getElementById("routedays").value;
			var routetitle = document.getElementById("routetitle").value;
			var routeintro = document.getElementById("routeintro").value;
			console.log(routedays, routetitle, routeintro);
			jQuery.ajax({
				type:'POST',
				url:'AddRouteInfo',
				processData : true,
				dataType : "text",
				data : {
					routedays : routedays,
					routetitle : routetitle,
					routeintro : routeintro
				},
				success : function(data){
					window.location.href="allTagsPro";
				}
			})
		}
		
		function check(){
			var routedays = document.getElementById("routedays").value;
			var routetitle = document.getElementById("routetitle").value;
			if(routedays != "" && routetitle != ""){
				document.getElementById("confirm").disabled = false;
			}
			else{
				document.getElementById("confirm").disabled = true;
			}
		}
	</script>

</body>



</html>