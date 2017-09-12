<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="model.Route"%>
<!DOCTYPE html>
<html lang="en">
<script type="text/javascript"
	src="http://api.map.baidu.com/api?v=2.0&ak=UKr8XUoQlaYbozgGhyzG0c88inkDGUfV"></script>
<head>

<meta charset="UTF-8">
<title>Release Travel Route</title>

<script src="/changyoup/changyoup/js/jquery.min.js"></script>

<link href="../css/Releaseplan.css" rel="stylesheet" type="text/css">

</head>


<body>
	<%
		int routeid=0;
		if (session.getAttribute("rid")!=null){
			routeid=(Integer) session.getAttribute("rid");
		}
		int day = 1;
		if (session.getAttribute("day") != null) {
			day = (Integer) session.getAttribute("day");
		} else {
			session.setAttribute("day", day);
		}

		int maxday = 3;
		if (session.getAttribute("maxday") != null) {
			maxday = (Integer) session.getAttribute("maxday");
		} else {
			session.setAttribute("maxday", maxday);
		}

		String scontent = "无内容";
		if (request.getAttribute("scontent") != null) {
			scontent = (String) request.getAttribute("scontent");
		}

		String location1 = "";
		String location2 = "";
		if (request.getAttribute("sroute") != null) {
			Route sroute = (Route) request.getAttribute("sroute");
			location1 = sroute.getLocation1();
			location2 = sroute.getLocation2();
		}
	%>
	<div class="container">
		<div>
			<h3>
				Day
				<%=day%></h3>
		</div>
		<div>
			<h4>
				Route id
				<%=session.getAttribute("rid")%></h4>
		</div>


		<div style="float: left">
			<p>
				经度：<%=location1%>
			</p>
		</div>
		<div>
			<p>
				纬度：<%=location2%></p>
		</div>
		<br>

		<div id="toolbar_div" class="toolbar"></div>
		<div style="padding: 5px 0; color: #ccc">中间隔离带</div>
		<div id="row">
			<p><%=scontent%></p>
		</div>

		<br>
		<div style="height: 600px;">
			<div id="r-result">
				请输入关键词并点地图以加入坐标:<input type="text" id="suggestId" size="20"
					value="百度" style="width: 150px;" />
				<div id="l-map" style="height: 350px;"></div>

			</div>
			<div id="searchResultPanel"
				style="border: 1px solid #C0C0C0; width: 150px; height: auto; display: none;"></div>
		</div>


		<button onclick="preday()" <%if (day <= 1) {%> disabled="ture" <%}%>>上一天</button>
		&nbsp;
		<button onclick="window.location.href='ViewRoute'">修改路线</button>
		<button onclick="nextday()" <%if (day >= maxday) {%> disabled="true"
			<%}%>>下一天</button>
		<div style="float: right">
			<button id="jump" onclick="jumpto()">跳转</button>
			到第 <input type="int" name="targetday" id="targetday" value="1"
				size="5" maxlength="5" onblur="check()"> 页
		</div>
	</div>

	<script type="text/javascript">		
		// 百度地图API功能
		function G(id) {
		return document.getElementById(id);
	}

	var map = new BMap.Map("l-map");
	map.centerAndZoom("北京",12);                   // 初始化地图,设置城市和地图级别。
		var loc1=document.getElementById("location1");
		var loc2=document.getElementById("location2");
		//单击获取点击的经纬度
		map.addEventListener("click", function(e) {
			loc1.value=e.point.lng;
			loc2.value=e.point.lat;
		});
		var ac = new BMap.Autocomplete(    //建立一个自动完成的对象
				{"input" : "suggestId"
				,"location" : map
			});

			ac.addEventListener("onhighlight", function(e) {  //鼠标放在下拉列表上的事件
			var str = "";
				var _value = e.fromitem.value;
				var value = "";
				if (e.fromitem.index > -1) {
					value = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;
				}    
				str = "FromItem<br />index = " + e.fromitem.index + "<br />value = " + value;
				
				value = "";
				if (e.toitem.index > -1) {
					_value = e.toitem.value;
					value = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;
				}    
				str += "<br />ToItem<br />index = " + e.toitem.index + "<br />value = " + value;
				G("searchResultPanel").innerHTML = str;
			});

			var myValue;
			ac.addEventListener("onconfirm", function(e) {    //鼠标点击下拉列表后的事件
			var _value = e.item.value;
				myValue = _value.province +  _value.city +  _value.district +  _value.street +  _value.business;
				G("searchResultPanel").innerHTML ="onconfirm<br />index = " + e.item.index + "<br />myValue = " + myValue;
				
				setPlace();
			});

			function setPlace(){
				map.clearOverlays();    //清除地图上所有覆盖物
				function myFun(){
					var pp = local.getResults().getPoi(0).point;    //获取第一个智能搜索的结果
					map.centerAndZoom(pp, 18);
					map.addOverlay(new BMap.Marker(pp));    //添加标注
				}
				var local = new BMap.LocalSearch(map, { //智能搜索
				  onSearchComplete: myFun
				});
				local.search(myValue);
			}

</script>
	<script language="javascript">
    
    	<%String url = "TravelRoute?routeid="+Integer.toString(routeid);%>
		
		function preday(){
			console.log("preday");
			jQuery.ajax({
				type:'POST',
				url:'PreviousDay4User',
				processData : true,
				dataType : "text",
				data : {
				},
				success : function(data){
					window.location.href="<%=url%>";
				}
			})
			//document.getElementById("content").value=editor.txt.html();
			//document.forms.routeform.action="PreviousDay";
			//document.forms.routeform.submit();
		}
		
		function edit(){
			jQuery.ajax({
				type:'POST',
				url:'ViewRoute',
				processData : true,
				dataType : "text",
				data : {
				},
				success : function(data){
					window.location.href="ViewRoute";
				}
			})
		}
		function nextday(){
			console.log("nextday");
			jQuery.ajax({
				type:'POST',
				url:'NextDay4User',
				processData : true,
				dataType : "text",
				data : {
				},
				success : function(data){
					window.location.href="<%=url%>";
				}
			})
			//document.getElementById("content").value=editor.txt.html();
			//document.forms.routeform.action="NextDay";
			//document.forms.routeform.submit();
		}
		
		function jumpto(){
			var targetday = document.getElementById("targetday").value;
			console.log(targetday);
			jQuery.ajax({
				type:'POST',
				url:'JumptoChosenDay4User',
				processData : true,
				dataType : "text",
				data : {
					targetday : targetday
				},
				success : function(data){
					window.location.href="<%=url%>";
				}
			})
			//document.getElementById("content").value=editor.txt.html();
			//document.forms.routeform.action="JumptoChosenDay";
			//document.forms.routeform.submit();
			//window.href.location="ViewRoute";
		}
		
		function check(){
			var target = document.getElementById("targetday").value;
			var reg = /^\d+$/;
			if(reg.test(target)==true){
				var maxpage = "<%=maxday%>";
				if (document.getElementById("jump").disabled) {
					if (1 <= parseInt(target)
							&& parseInt(target) <= parseInt(maxpage)) {
						document.getElementById("jump").disabled = false;
					}
				} else {
					if (1 > parseInt(target)
							|| parseInt(target) > parseInt(maxpage)) {
						document.getElementById("jump").disabled = true;
					}
				}
			} else {
				document.getElementById("jump").disabled = true;
			}
		}
	</script>

</body>
</html>