<%@ page language="java" import="java.util.*,tyut.baseClass.*"  contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>班级成绩单</title>
		<link rel="stylesheet" type="text/css" href="static/css/base.css">
		<link rel="stylesheet" type="text/css" href="static/css/search.css">
		<link rel="stylesheet" type="text/css" href="static/css/table.css">
	</head>
	<body background="static/image/bg2.png">
		<div class="container"  style="text-align:center" > 
			<h2 style="color:white;"> <%= request.getAttribute("major") %>专业<%= request.getAttribute("class_id") %>班成绩单 </h2>
	        <% ArrayList<class_report_item> report = (ArrayList)request.getAttribute("report"); %>
        	<div class="report-sheet">
            	<table>
            		<tbody>
				      	<th>
				      		<td>课程号</td>
				      		<td>课程名</td>
				      		<td>最高分</td>
				      		<td>平均分</td>
				      		<td>不及格人数</td>
				      		<td>详情</td>
				      	</th>
				      	<% for(int i=0;i<report.size();i++){ %>
			      		<tr>
			      			<td><%= i+1 %></td>
							<td><%= report.get(i).course_id %></td>
				      		<td><%= report.get(i).title %></td>
				      		<td><%= report.get(i).max %></td>
				      		<td><%= report.get(i).mean %></td>
				      		<td><%= report.get(i).fail %></td>
				      		<td><a href="?major=<%= request.getAttribute("major") %>&class_id=<%= request.getAttribute("class_id") %>&course_id=<%= report.get(i).course_id %>&title=<%= report.get(i).title %>">详情</a></td>
			      		</tr>
				      	<% } %>
				      </tbody>
            	</table>
        	</div>
	    </div>
	</body>
</html>