<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
<%@ page import="model.Route"%>
<!DOCTYPE html>
<html lang="en">

<head>
	
	<meta charset="UTF-8">
	<title>Release Travel Route</title>
	
	<script src="/changyoup/changyoup/js/jquery.min.js"></script>

	<link href="../css/Releaseplan.css" rel="stylesheet" type="text/css">
	
</head>


<body>
	<%
		int day = 1;
		if(session.getAttribute("day")!=null){
			day = (Integer)session.getAttribute("day");
		}
		else{
			session.setAttribute("day", day);
		}
		
		int maxday = 3;
		if(session.getAttribute("maxday")!=null){
			maxday = (Integer)session.getAttribute("maxday");
		}
		else{
			session.setAttribute("maxday", maxday);
		}
		
		String scontent = "<p>欢迎使用 <b>wangEditor</b> 富文本编辑器</p>";
		if(request.getAttribute("scontent")!=null){
			scontent=(String)request.getAttribute("scontent");
		}
		
		String location1 = "";
		String location2 = "";
		if(request.getAttribute("sroute")!=null){
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
		
	<div><h3>Day <%=day%></h3></div>
	<div><h4>Route id <%=session.getAttribute("rid") %></h4></div>
		
	<form action="" method="post" name="routeform" id="routeform">
		
		<div style="float:left">
			输入经度：<input type="text" name="location1" id="location1" value=<%=location1 %> >&nbsp;
		</div>
		<div>
			输入纬度：<input type="text" name="location2" id="location2" value=<%=location2 %> >
		</div>
		<br>
		
		<div id="toolbar_div" class="toolbar"></div>
		<div style="padding: 5px 0; color: #ccc">中间隔离带</div>
		<div id="text_div" class="text">
        	<%=scontent %>
    	</div>
    	<!-- 注意， 只需要引用 JS，无需引用任何 CSS ！！！-->
    	<script type="text/javascript" src="../js/wangEditor/wangEditor.min.js"></script>
    	<script type="text/javascript">
        	var E = window.wangEditor
        	var editor = new E('#toolbar_div','#text_div')	// 或者 var editor = new E( document.getElementById('#editor') )
        	editor.customConfig.uploadImgShowBase64 = true   // 使用 base64 保存图片
        	editor.create()
        
        
        	document.getElementById('btn1').addEventListener('click', function () {
        		// 读取 html
        		alert(editor.txt.html())
   			}, false)

    		document.getElementById('btn2').addEventListener('click', function () {
        		// 读取 text
        		alert(editor.txt.text())
    		}, false)
    	</script>
    	<br>
		
    	</form>
    	<button onclick="preday()" <% if(day <= 1){ %> disabled="ture" <% } %>>上一天</button>&nbsp;
		<button onclick="release()">发布路线</button>&nbsp;
		<button onclick="nextday()" <%if(day >= maxday){ %>disabled="true" <% } %>>下一天</button>
		<div style="float:right">
			<button id="jump" onclick="jumpto()">跳转</button>
			到第
			<input type="int" name="targetday" id="targetday" value="1" size="5" maxlength="5" onblur="check()">
			页
		</div>
    	<br>
    	<button onclick="confirmclear()">清空内容</button>
    	</div>
    	
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
				var maxpage = "<%=maxday %>";
				if(document.getElementById("jump").disabled){
					if(1 <= parseInt(target) && parseInt(target) <= parseInt(maxpage)){
		    			document.getElementById("jump").disabled = false;
		    		}
				}
				else{
					if(1 > parseInt(target) || parseInt(target) > parseInt(maxpage)){
		    			document.getElementById("jump").disabled = true;
		    		}
				}
			}else{
				document.getElementById("jump").disabled = true;
			}
		}
	</script>

</body>
</html>