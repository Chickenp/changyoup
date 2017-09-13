<%@ page import="java.util.ArrayList"%>
<%@ page import="model.Tag"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<title>Add Tag to Route</title>
	<script src="/changyoup/changyoup/js/jquery.min.js"></script>
	<script src="/changyoup/changyoup/js/bootbox.min.js"></script>
	<%@include file="logincheckadmin.jsp"%>
	<%@include file="CommonHead.jsp"%>
</head>


<body>
	<%
		ArrayList<Tag> tagList = new ArrayList<Tag>();
		if (request.getAttribute("tags") != null) {
			tagList = (ArrayList<Tag>) request.getAttribute("tags");
		}
	%>
	
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
							<h2 style="color:#fff;"><%=session.getAttribute("routetitle") %></h2>
							<div id="addnewtag">
								<div style="float:left;">输入标签：
									<input type="text" name="tagname" id="tagname" maxlength="200"
										onblur="check()" style="color:#000;">
								</div>
								<button id="addtag" onclick="addtag()" disabled="true" 
									style="color:#000;">添加标签</button>
							</div>
							<br>
							<div style="float:left;">已有标签：
								<select id="tag" style="width:200px;height:32px;color:#000;">
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
							</div>
							<button onclick="deletetag()" <%if (tagList.size() == 0) {%> disabled="true" <%}%>
								style="color:#000;">删除标签</button>
							<br><br>
							<button onclick="finish()" style="color:#000;">完成添加</button>
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
		function check(){
			var tagname = document.getElementById("tagname").value;
			if(tagname == ""){
				document.getElementById("addtag").disabled = true;
			}
			else{
				document.getElementById("addtag").disabled = false;
			}
		}
	
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