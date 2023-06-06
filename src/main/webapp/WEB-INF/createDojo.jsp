<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Dojo</title>
<link rel="stylesheet" type="text/css" href="/css/style.css">
</head>
<body>
	<div class = "super">
		<h1>New Dojo</h1>
		<form:form action="/new/Dojo" method = "post" modelAttribute = "dojo">
		<div class="add" id = "add1">
			<form:label path="name">Title</form:label>
			<form:errors class="error" path = "name"/>
			<form:input path="name"/>
		</div>
		
			<input class="btn" id ="submit" type = "submit" value="Create"/>
		
		</form:form>
		<div class= "add">
			<p><a href = "/ninjas/new">Create Ninja</a></p>
		</div>
	</div>
</body>
</html>