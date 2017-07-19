<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
	
	<meta charset="UTF-8">
	<title>Release Travel Route</title>

	<script language="javascript">
		function confirmclear(){
			if(confirm("确定要清除所有内容？\n注意！此操作不可撤销！")){
				editor.txt.clear();
			}
		}
		
		function preday(){
			document.getElementById("content").value=editor.txt.html();
			document.forms.routeform.action="PreviousDay";
			document.forms.routeform.submit();
		}
		
		function release(){
			document.getElementById("content").value=editor.txt.html();
			document.forms.routeform.action="ReleaseRoute";
			document.forms.routeform.submit();
		}
		
		function nextday(){
			document.getElementById("content").value=editor.txt.html();
			document.forms.routeform.action="NextDay";
			document.forms.routeform.submit();
		}
	</script>
	<link href="../css/Releaseplan.css" rel="stylesheet" type="text/css">
	
</head>


<body>
	<%
		int day = 1;
		if(session.getAttribute("day")!=null){
			day = (int)session.getAttribute("day");
		}
		else{
			session.setAttribute("day", day);
		}
		
		int maxday = 3;
		if(session.getAttribute("maxday")!=null){
			maxday = (int)session.getAttribute("maxday");
		}
		else{
			session.setAttribute("maxday", maxday);
		}
		
		String scontent = "<p>欢迎使用 <b>wangEditor</b> 富文本编辑器</p>";
		if(request.getAttribute("scontent")!=null){
			scontent=(String)request.getAttribute("scontent");
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
			<p>输入经度：<input type="text" name="location1" id="locoation1"/>&nbsp;</p>
		</div>
		<div>
			<p>输入纬度：<input type="text" name="location2" id="locoation2"/></p>
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
    	
		<input type="hidden" name="content" id="content" />
		
		<button onclick="preday()" <% if(day <= 1){ %> disabled="ture" <% } %>>上一天</button>&nbsp;
		<button onclick="release()">发布路线</button>&nbsp;
		<button onclick="nextday()" <%if(day >= maxday){ %>disabled="true" <% } %>>下一天</button>

    	</form>
    	<br>
    	<button onclick="confirmclear()">清空内容</button>
    	

</body>
</html>