<%@ page language="java" import="java.util.*,tyut.baseClass.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>学生成绩单</title>
		<link rel="stylesheet" type="text/css" href="static/css/base.css">
		<link rel="stylesheet" type="text/css" href="static/css/search.css">
		<link rel="stylesheet" type="text/css" href="static/css/table.css">
	</head>
	<body background="static/image/bg2.png">
		<div class="container"  style="text-align:center" > 
	        <% student stu = (student)request.getAttribute("stu"); %>
	        <% if(stu!=null){ %>
	        	<h2 style="color:white;" > 欢迎<%= stu.name %>同学，你的成绩单如下  </h2>
	        	<h3 style="color:white;"> 学号：<%= stu.stu_id %> &nbsp;&nbsp; 总学分：<%= stu.tot_cred %></h3>
	        	<div class="report-sheet">
	            	<% ArrayList<report_item> report = (ArrayList)request.getAttribute("report"); %>
	            	<table>
	            		<tbody>
					      	<tr>
					      		<td>课程号</td>
					      		<td>课程名</td>
					      		<td>学期</td>
					      		<td>学年</td>
					      		<td>学分</td>
					      		<td>成绩</td>
					      	</tr>
					      	<% for(int i=0;i<report.size();i++){ %>
					      		<tr>
									<td><%= report.get(i).course_id %></td>
						      		<td><%= report.get(i).title %></td>
						      		<td><%= report.get(i).semester %></td>
						      		<td><%= report.get(i).year %></td>
						      		<td><%= report.get(i).credits %></td>
						      		<td><%= report.get(i).grade %></td>
					      		</tr>
					      	<% } %>
					      </tbody>
	            	</table>
	        	</div>
	        <% } %>
	    </div>
	</body>
</html>