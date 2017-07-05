<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Release Travel Plan</title>
	<style type="text/css">
        .toolbar {
            border: 1px solid #ccc;
        }
        .text {
            border: 1px solid #ccc;
            height: 600px;
        }
    </style>
	<script language="javascript">
		function confirmclear(){
			if(confirm("确定要清除所有内容？\n注意！此操作不可撤销！")){
				editor.txt.clear();
			}
		}
	</script>
	<link href="../css/Releaseplan.css" rel="stylesheet" type="text/css">
</head>
	<b>本页面用于发布旅游攻略，暂时做成独立页面，此后可以整合进AdminCenter</b>
	<br></br>
	
	<div class="container">
		<button id="btn1">获取html</button>
		<button id="btn2">获取text</button>
		<br></br>
		
	<form action="ReleasePlan" method="post" name="planform">
		<div style="float:left;">标题：</div>
		<div><p><input name="title" id="title" type="text" maxlength="20">&nbsp;（注意：最多20个字！）</p></div>
		
		<div style="float:left;">路线类型：</div>
		<div>
			<p>
			<input type="radio" name="plantype" id="plantype" value="individual"/>自助游&nbsp;
			<input type="radio" name="plantype" id="plantype" value="group"/>跟团游&nbsp;
			<input type="radio" name="plantype" id="plantype" value="selfdrive"/>自驾游
			</p>
		</div>
		
		<div id="toolbar" class="toolbar"></div>
		<div style="padding: 5px 0; color: #ccc">中间隔离带</div>
		<div id="text" class="text">
        	<p>欢迎使用 <b>wangEditor</b> 富文本编辑器</p>
    	</div>
    	<!-- 注意， 只需要引用 JS，无需引用任何 CSS ！！！-->
    	<script type="text/javascript" src="../js/wangEditor/wangEditor.min.js"></script>
    	<script type="text/javascript">
        	var E = window.wangEditor
        	var editor = new E('#toolbar', '#text')	// 或者 var editor = new E( document.getElementById('#editor') )
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
    	<br></br>
    	
    	<button style="float:left;">发布路线</button>
    	</form>
    	&nbsp;<button onclick="confirmclear()">清空内容</button>
    	
    
	</div>
	
<body>

</body>
</html>