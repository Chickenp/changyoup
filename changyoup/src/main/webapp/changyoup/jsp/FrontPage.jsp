<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>

</head>


<body>
	<div class="container">
	
	<form action="AddRouteInfo" method="post">
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
		
		<div><input type=submit value="确认"></div>
	</form>
	</div>


</body>



</html>