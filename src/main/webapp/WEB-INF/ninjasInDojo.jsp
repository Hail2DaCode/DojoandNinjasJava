<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dojos Page</title>
<link rel="stylesheet" type="text/css" href="/css/style.css">
</head>
<body>
	<div class = "super">
		<h1><c:out value = "${ dojo.name }"/> Location Ninjas</h1>
		<table>
			<thead>
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Age</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var = "ninja" items = "${dojo.ninjas}">
					<tr>
					<td><c:out value = "${ ninja.firstName }"/></td>
					<td><c:out value = "${ ninja.lastName }"/></td>
					<td><c:out value = "${ ninja.age }"/></td>
				</tr>
				</c:forEach>
				
			</tbody>
				
		</table>
		<div class= "add">
			<p><a href = "/ninjas/new">Create Ninja</a></p>
			<p><a href = "/dojos/new">Create Dojo</a></p>
		</div>
		
	</div>
</body>
</html>