<%@ page language="java" import="java.util.*,tyut.baseClass.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<title>课程表</title>
		<link rel="stylesheet" type="text/css" href="static/css/base.css">
		<link rel="stylesheet" type="text/css" href="static/css/search.css">
		<link rel="stylesheet" type="text/css" href="static/css/table.css">
	</head>
	<body background="static/image/bg2.png">
		<div  style="text-align:center;color:white;"  >
			<% String type = (String)request.getAttribute("type"); %>
			<% if(type!=null || type!=""){ %>
				<h2> <%= request.getAttribute("year") %>学年 <%= request.getAttribute("semester") %>学期 </h2>
	            	<% if(type.compareTo("student")==0){ %>
	            		<h2> <%= request.getAttribute("stu_id") %> <%= request.getAttribute("name") %>学生课表 </h2>
		        	<% }else if(type.compareTo("instructor")==0) {%>
		        		<h2><%= request.getAttribute("ins_id") %> <%= request.getAttribute("name") %>教师课表 </h2>
		        	<% }else if(type.compareTo("classroom")==0) {%>
		        		<h2><%= request.getAttribute("building") %> <%= request.getAttribute("room_number") %>教室课表 </h2>
		        	<% }else if(type.compareTo("class")==0){%>
		        		<h2><%= request.getAttribute("major") %>专业<%= request.getAttribute("class_id") %>班课表 </h2>
		        	<% } %>
			<% } %>
        </div>
		<div class="container"  style="text-align:center;top: 150px;" >
			<% ArrayList<ArrayList<schedule_item>> schedule = (ArrayList<ArrayList<schedule_item>>)request.getAttribute("schedule"); %>
			<% if(schedule!=null) {%>
				<table>
		        	<th>
		        		<td>一</td>
		        		<td>二</td>
		        		<td>三</td>
		        		<td>四</td>
		        		<td>五</td>
		        		<td>六</td>
		        		<td>日</td>
		        	</th>
		        	<% for(int i=0;i<schedule.size();i++){ %>
		        		<tr>
		        			<td><%= i+1 %></td>
		        			<% for(int j=0;j<schedule.get(i).size();j++){ %>
		        				<td>
		        					<%= schedule.get(i).get(j).title==null?" ":schedule.get(i).get(j).title %><br/>
		        					<%= schedule.get(i).get(j).building==null?" ":schedule.get(i).get(j).building %><br/>
		        					<%= schedule.get(i).get(j).room_number==null?" ":schedule.get(i).get(j).room_number %>
		        				</td>
		        			<% } %>
		        		</tr>
		        	<%} %>
		        </table>
			<% } %>
	        
	    </div>
	</body>
</html>