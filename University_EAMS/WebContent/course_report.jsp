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
			<h2 style="color:white;" > <%= request.getParameter("major") %>专业<%= request.getParameter("class_id") %>班 </h2>
			<h2 style="color:white;" > <%= request.getParameter("title") %>课程成绩单 </h2>
	        <% ArrayList<course_report_item> report = (ArrayList)request.getAttribute("report"); %>
        	<div class="report-sheet">
            	<table>
            		<tbody>
				      	<th>
				      		<td>学号</td>
				      		<td>姓名</td>
				      		<td>成绩</td>
				      	</th>
				      	<% for(int i=0;i<report.size();i++){ %>
			      		<tr>
			      			<td><%= i+1 %></td>
							<td><%= report.get(i).stu_id %></td>
				      		<td><%= report.get(i).name %></td>
				      		<td><%= report.get(i).grade==null?" ":report.get(i).grade %></td>
			      		</tr>
				      	<% } %>
				      </tbody>
            	</table>
    		    <h4 style="color:white;"> 最高分:<%= request.getAttribute("max") %> </h4>
    		    <h4 style="color:white;"> 平均分:<%= request.getAttribute("mean") %> </h4>
	           	<h4 style="color:white;"> 不及格人数:<%= request.getAttribute("fail") %> </h4>
        	</div>
	    </div>
	</body>
</html>