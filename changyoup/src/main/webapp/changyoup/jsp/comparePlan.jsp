<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<% 
	
%>

<head>
	<title>Plan Comparison</title>

	<link href="../css/Compareplan.css" rel="stylesheet" type="text/css">
</head>

<body>
	<b>本页面用于旅游计划之间的对比</b>
	<ul>
		<li>在查看旅游计划页面通过“添加对比”按钮将旅游计划的id加入session或request中
		<li>随后在本页面通过getAttribute()函数得到信息并进行对比
	</ul>
	
	<div class="container">
	<table border="1"  width="100%" cellpadding="1" cellspacing="1" style="table-layout:fixed;">
		<tbody>
		<tr>
    		<td width="100px">计划名称</td>
    		<td></td>
    		<td></td>
  		</tr>
  		<tr>
    		<td>费用</td>
    		<td></td>
    		<td></td>
  		</tr>
  		</tbody>
  		<tbody>
  		<tr>
    		<td>具体行程</td>
    		<td></td>
    		<td></td>
  		</tr>
  		</tbody>
   		<tbody>
  		<tr>
    		<td>餐饮</td>
    		<td></td>
    		<td></td>
  		</tr>
  		</tbody>
  		<tbody>
  		<tr>
    		<td>住宿</td>
    		<td></td>
    		<td></td>
  		</tr>
  		</tbody>  		 		
	</table>
	<br></br>
	<input type="button" name="Submit" onclick="javascript:history.back(-1);" value="返回上一页">
	</div><!-- Container -->
	
</body>
</html>