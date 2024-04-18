<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>成绩查询</title>
		<link rel="stylesheet" type="text/css" href="static/css/base.css">
		<link rel="stylesheet" type="text/css" href="static/css/search_form.css">
	</head>
	<body background="static/image/bg1.png">
		<div class="container" >
			<div class="listbox">
		      <h3>成绩查询</h3>
		        <% String type = (String)request.getAttribute("type"); %>
				<% if(type!=null || type!=""){ %>
		            <form method="post">
		            	<% if(type.compareTo("student")==0){ %>
			        		<input type="text"  name="stu_id" placeholder="请输入学号">
			        	<% }else if(type.compareTo("class")==0){%>
			        		<input type="text"  name="major" placeholder="请输入专业">
			        		<input type="text"  name="class_id" placeholder="请输入班级号">
			        	<% } %>
						<input type="submit" id="sub" class="search-btn" value="search">
					</form>
				<% } %>
		    </div>
		</div>
	</body>
</html>