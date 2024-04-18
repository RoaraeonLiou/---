<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" type="text/css" href="static/css/base.css">
		<link rel="stylesheet" type="text/css" href="static/css/list.css">
		<title>大学教务管理系统</title>
	</head>
	<body background="static/image/bg1.png">
		<div class="container" >
			<div class="listbox">
		      <h3>大学教务管理系统</h3>
		      <ul>
		        <li><a href="base_data">查询数据库表</a></li>
		        <li><a href="schedule?type=instructor">查询老师课表</a></li>
		        <li><a href="schedule?type=class">查询班级课表</a></li>
		        <li><a href="schedule?type=classroom">查询教室课表</a></li>
		        <li><a href="schedule?type=student">查询学生课表</a></li>
		        <li><a href="class_report">查询班级成绩</a></li>
		        <li><a href="stu_report">查询学生成绩</a></li>
		      </ul>
		    </div>
		</div>
	</body>
</html>