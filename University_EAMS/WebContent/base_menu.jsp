<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" type="text/css" href="static/css/base.css">
		<link rel="stylesheet" type="text/css" href="static/css/list.css">
		<title>数据库目录</title>
	</head>
	<body background="static/image/bg1.png">
	  	<div class="container">
    		<div class="listbox">
		      <h3>大学教务管理系统</h3>
		      <ul>
		        <% ArrayList<String> tables = (ArrayList)request.getAttribute("tables"); %>
		        <% for(int i=0;i<tables.size();i++) {%>
		        	<li><a href="base_data?table=<%= tables.get(i) %>"><%= tables.get(i) %></a></li>
		        <% } %> 
		      </ul>
		    </div>
	  	</div>
	  	<br/><br/><br/><br/>
	</body>
</html>