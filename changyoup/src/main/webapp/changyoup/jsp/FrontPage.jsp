<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>

	<script src="/changyoup/changyoup/js/jquery.min.js"></script>

</head>


<body>
	<div class="container">
	
	<form>
		<div style="float:left;">天数：</div>
		<div><p><input type=int name="routedays" id="routedays" required=""></p></div>
		
		<div style="float:left;">标题：</div>
		<div><p><input name="routetitle" id="routetitle" type="text" maxlength="20" required="">&nbsp;（注意：最多20个字！）</p></div>
		
		<div style="float:left;">路线类型：</div>
		<div>
			<p>
				<input type="radio" name="routetype" id="routetype" value="1"/>自助游&nbsp;
				<input type="radio" name="routetype" id="routetype" value="2"/>跟团游&nbsp;
				<input type="radio" name="routetype" id="routetype" value="3"/>自驾游
			</p>
		</div>
		
		<div style="float:left;">简介：</div>
		<div>
			<p><textarea name="routeintro" id="routeintro" type="text" maxlength="200"
				style="width:400px;height:200px;" required=""></textarea>&nbsp;（注意：最多200个字！）</p>
		</div>
		

	</form>
	<button onclick="submit()">确认</button>
	</div>
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
	</script>

</body>



</html>