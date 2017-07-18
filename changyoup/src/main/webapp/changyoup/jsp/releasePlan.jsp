<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<%
String cplan="";
int uid=10;
int pubid=0;
int planid=0;
String title="";
if (session.getAttribute("planid")!=null){
	planid=(Integer) session.getAttribute("planid");
}
if (session.getAttribute("uid")!=null){
	uid=(Integer) session.getAttribute("uid");
}
if (request.getAttribute("cplan") != null) {
	cplan = (String) request.getAttribute("cplan");
	pubid=(Integer) request.getAttribute("pubid");
}
	if (pubid!=uid){
		%>
	<script type="text/javascript" language="javascript">
		alert("这个攻略属于别的用户，您不能修改");
		top.location.href = "Account";
	</script>
		<%
	}
if (request.getAttribute("title") != null) {
	title = (String) request.getAttribute("title");
}
String path = request.getContextPath();

%>
<head>
	<meta charset="UTF-8">
	<title>Release Travel Plan</title>
	   
	<script language="javascript">
		function confirmclear(){
			if(confirm("确定要清除所有内容？\n注意！此操作不可撤销！")){
				editor.txt.clear();
			}
		}
	</script>
	<link href="<%=path%>/changyoup/css/Releaseplan.css" rel="stylesheet" type="text/css">
</head>
	<b>本页面用于发布旅游攻略，暂时做成独立页面，此后可以整合进AdminCenter</b>
	<b>本页面也可用于游客发表攻略和评论，待整合</b>
	<br></br>
	
	<div class="container">
		<button id="btn1">获取html</button>
		<button id="btn2">获取text</button>
		<br></br>
		
	<form name="planform">
		<div style="float:left;">标题：</div>
		<div><p><input name="title" id="title" type="text" maxlength="20" value="<%=title%>">&nbsp;（注意：最多20个字！）</p></div>
		
		<div style="float:left;">路线类型：</div>
		<div>
			<p>
			<input type="radio" name="plantype" id="plantype" value="individual"/>自助游&nbsp;
			<input type="radio" name="plantype" id="plantype" value="group"/>跟团游&nbsp;
			<input type="radio" name="plantype" id="plantype" value="selfdrive"/>自驾游
			</p>
		</div>
		
		<div id="toolbar_div" class="toolbar"></div>
		
		<div style="padding: 5px 0; color: #ccc">中间隔离带</div>
		
		<div id="text_div" class="text">
        	<%=cplan%>
    	</div>
    	<br></br>
    	</form>
    	<button style="float:left;" id="btnpub">发布路线</button>
    	&nbsp;<button onclick="confirmclear()">清空内容</button>
    	
    	
    	<!-- 注意， 只需要引用 JS，无需引用任何 CSS ！！！-->
    	<script type="text/javascript" src="<%=path%>/changyoup/js/wangEditor/wangEditor.min.js"></script>
    	<script type="text/javascript" src="<%=path%>/changyoup/js/jquery.min.js"></script>
    	<script type="text/javascript">
        	var E = window.wangEditor
        	var editor = new E('#toolbar_div','#text_div')	// 或者 var editor = new E( document.getElementById('#editor') )
        	editor.customConfig.uploadImgShowBase64 = true   // 使用 base64 保存图片
        	editor.create();
        	
        	
        	document.getElementById('btn1').addEventListener('click', function () {
        		// 读取 html
        		alert(editor.txt.html())
   			}, false)

            document.getElementById('btnpub').addEventListener('click', function () {
        		// 读取 text
        		var title = $("input[name='title']").val();
        		var plan=editor.txt.html();
        		var publisher=<%=uid%>;
        		console.log(publisher);
        		<%
        		String url="editPlan?planid="+planid;
        		if (request.getAttribute("cplan") != null){%>
        		jQuery.ajax({	
      				type:'POST',
					url:'editConfirm',
					processData : true,
					dataType : "text",
					data : {
					title:title,
					plan : plan,
					publisher:publisher
					},
					success : function(data){
						window.location.href="<%=url%>";
					}
				})
        		<%       		
        		}else{
        		%>
        		jQuery.ajax({	
      				type:'POST',
					url:'savePlan',
					processData : true,
					dataType : "text",
					data : {
					title:title,
					plan : plan,
					publisher:publisher
					},
					success : function(data){
						window.location.href="<%=url%>";
					}
				})
				<%}
				
				%>
    		}, false)

    		document.getElementById('btn2').addEventListener('click', function () {
        		// 读取 text
        		alert(editor.txt.text())
    		}, false)
    	</script>

    
	</div>
	
<body>

</body>
</html>