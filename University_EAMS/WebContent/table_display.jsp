<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>${table}</title>
		<link rel="stylesheet" type="text/css" href="static/css/base.css">
		<link rel="stylesheet" type="text/css" href="static/css/table.css">
	</head>
	<body background="static/image/bg2.png">
		<h1 align="center" style="color:white;">${table}</h1>
		<% ArrayList<String> metadata=(ArrayList)request.getAttribute("metadata"); %>
		<% ArrayList<ArrayList<String>> data=(ArrayList)request.getAttribute("data"); %>
		<div class="container">
			<table>
		      <tbody>
		      	<tr>
		      	<% for(int i=0;i<metadata.size();i++){ %>
		      		<td><%= metadata.get(i) %></td>
		      	<% } %>
		      	</tr>
		      	<% for(int i=0;i<data.size();i++){ %>
		      		<tr>
						<% for(int j=0;j<data.get(i).size();j++){ %>
							<td><%= data.get(i).get(j) %></td>
						<% } %>
		      		</tr>
		      	<% } %>
		      </tbody>
		    </table>
	    </div>
	</body>
</html>