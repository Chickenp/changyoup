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

				String scontent = "<p>欢迎使用 <b>wangEditor</b> 富文本编辑器</p>";
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
			<button id="btn1">获取html</button>
			<button id="btn2">获取text</button>
		</div>

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

		<form action="" method="post" name="routeform" id="routeform">

			<div style="float: left">
				经度：<input type="text" name="location1" id="location1"
					value="<%=location1%>" readonly="readonly">&nbsp;
			</div>
			<div>
				纬度：<input type="text" name="location2" id="location2"
					value="<%=location2%>" readonly="readonly">
			</div>
			<br>

			<div id="toolbar_div" class="toolbar"></div>
			<div style="padding: 5px 0; color: #ccc">中间隔离带</div>
			<div id="text_div" class="text">
				<%=scontent%>
			</div>
			<!-- 注意， 只需要引用 JS，无需引用任何 CSS ！！！-->
			<script type="text/javascript"
				src="../js/wangEditor/wangEditor.min.js"></script>
			<script type="text/javascript">
				var E = window.wangEditor
				var editor = new E('#toolbar_div', '#text_div') // 或者 var editor = new E( document.getElementById('#editor') )
				editor.customConfig.uploadImgShowBase64 = true // 使用 base64 保存图片
				editor.create()

				document.getElementById('btn1').addEventListener('click',
						function() {
							// 读取 html
							alert(editor.txt.html())
						}, false)

				document.getElementById('btn2').addEventListener('click',
						function() {
							// 读取 text
							alert(editor.txt.text())
						}, false)
			</script>
			<br>
		</form>
		<div style="height: 600px;">
		<div id="r-result">
			请输入关键词并点地图以加入坐标:<input type="text" id="suggestId" size="20" value="百度"
				style="width: 150px;" />
		<div id="l-map" style="height:350px;"></div>
		
		</div>
		<div id="searchResultPanel"
			style="border: 1px solid #C0C0C0; width: 150px; height: auto; display: none;"></div>
			</div>
		<button onclick="preday()" <%if (day <= 1) {%> disabled="ture" <%}%>>上一天</button>
		&nbsp;
		<button onclick="release()">发布路线</button>
		&nbsp;
		<button onclick="nextday()" <%if (day >= maxday) {%> disabled="true"
			<%}%>>下一天</button>
		<div style="float: right">
			<button id="jump" onclick="jumpto()">跳转</button>
			到第 <input type="int" name="targetday" id="targetday" value="1"
				size="5" maxlength="5" onblur="check()"> 页
		</div>
		<br>
		<button onclick="confirmclear()">清空内容</button>
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
    
    	<%String url = "ViewRoute";%>
    
		function confirmclear(){
			if(confirm("确定要清除所有内容？\n注意！此操作不可撤销！")){
				editor.txt.clear();
			}
		}
		
		function preday(){
			var content = editor.txt.html();
			var location1 = document.getElementById("location1").value;
			var location2 = document.getElementById("location2").value;
			console.log(targetday);
			jQuery.ajax({
				type:'POST',
				url:'PreviousDay',
				processData : true,
				dataType : "text",
				data : {
					location1 : location1,
					location2 : location2,
					content : content,
				},
				success : function(data){
					window.location.href="<%=url%>";
				}
			})
			//document.getElementById("content").value=editor.txt.html();
			//document.forms.routeform.action="PreviousDay";
			//document.forms.routeform.submit();
		}
		
		function release(){
			var content = editor.txt.html();
			var location1 = document.getElementById("location1").value;
			var location2 = document.getElementById("location2").value;
			console.log(targetday);
			jQuery.ajax({
				type:'POST',
				url:'ReleaseRoute',
				processData : true,
				dataType : "text",
				data : {
					location1 : location1,
					location2 : location2,
					content : content,
				},
				success : function(data){
					window.location.href="<%=url%>";
				}
			})
			//document.getElementById("content").value=editor.txt.html();
			//document.forms.routeform.action="ReleaseRoute";
			//document.forms.routeform.submit();
		}
		
		function nextday(){
			var content = editor.txt.html();
			var location1 = document.getElementById("location1").value;
			var location2 = document.getElementById("location2").value;
			console.log(targetday);
			jQuery.ajax({
				type:'POST',
				url:'NextDay',
				processData : true,
				dataType : "text",
				data : {
					location1 : location1,
					location2 : location2,
					content : content,
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
			var content = editor.txt.html();
			var targetday = document.getElementById("targetday").value;
			var location1 = document.getElementById("location1").value;
			var location2 = document.getElementById("location2").value;
			console.log(targetday);
			jQuery.ajax({
				type:'POST',
				url:'JumptoChosenDay',
				processData : true,
				dataType : "text",
				data : {
					location1 : location1,
					location2 : location2,
					content : content,
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
				var maxpage = "<%=maxday%>
		";
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