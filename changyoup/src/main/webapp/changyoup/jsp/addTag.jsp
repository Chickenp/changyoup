<%@ page import="java.util.ArrayList"%>
<%@ page import="model.Tag"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

	<script src="/changyoup/changyoup/js/jquery.min.js"></script>
	<script src="/changyoup/changyoup/js/bootbox.min.js"></script>
</head>


<body>
	<%
		ArrayList<Tag> tagList = new ArrayList<Tag>();
		if (request.getAttribute("tags") != null) {
			tagList = (ArrayList<Tag>) request.getAttribute("tags");
		}
	%>
	<h3>Add Tag to Route <%=session.getAttribute("rid") %></h3>
	<div class="container">
	
	<div id="addnewtag">
		<div style="float:left">Input New Tag Name：</div>
		<div>
			<input type="text" name="tagname" id="tagname" maxlength="200">
		</div>
		<br>
		<button onclick="addtag()">添加Tag</button>
		<button onclick="finish()">完成Tag添加</button>
	</div>
	<br>
	
	<div style="float:left">已有的Tag：</div>
	<div>
		<select id="tag">
			<% 
				for (int i = 0; i < tagList.size(); i++) {
					Tag tag = tagList.get(i);
			%>
			<option value=<%=tag.getTagid() %>>
				<%=tag.getTagname() %>
			</option>
			<%
				}
			%>
		</select>
		<button onclick="deletetag()" <%if (tagList.size() == 0) {%> disabled="true" 
			<%}%>>删除Tag</button>
	</div>
	
	</div>
	
	<script>
		function addtag(){
			var tagname = document.getElementById("tagname").value;
			console.log(tagname);
			jQuery.ajax({
				type:'POST',
				url:'AddTag',
				processData : true,
				dataType : "text",
				data : {
					tagname : tagname
				},
				success : function(data){
					window.location.href="allTagsPro";
				}
			})
		}
		
		function finish(){
			window.location.href="releaseRoute.jsp";
		}
		
		function deletetag(){
			var index = document.getElementById("tag").selectedIndex;
			var tagid = document.getElementById("tag").options[index].value;
			var tagname = document.getElementById("tag").options[index].text;
			console.log(tagid, tagname);
			jQuery.ajax({
				type:'POST',
				url:'DeleteTag',
				processData : true,
				dataType : "text",
				data : {
					tagid : tagid,
					tagname : tagname
				},
				success : function(data){
					window.location.href="allTagsPro";
				}
			})
		}
	</script>
</body>

</html>