<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Ninja</title>
<link rel="stylesheet" type="text/css" href="/css/style.css">
</head>
<body>
	<div class="super">
		<form:form action = "/new/Ninja" method = "post" modelAttribute = "ninja">
			<div class="add" id = "add1">
			<form:label path="dojo">Dojo:</form:label>
<%-- 			<form:errors class="error" path = "name"/> --%>
			<form:select path = "dojo">
				<c:forEach var = "oneDojo" items = "${ dojos }">
				<form:option value = "${oneDojo.id }" path = "dojo">
					<c:out value = "${oneDojo.name }"/>
				</form:option>
				</c:forEach>
			</form:select>
			</div>
			<div class="add" id = "add2">
			<form:label path="firstName">First Name:</form:label>
<%-- 			<form:errors class="error" path = "name"/> --%>
			<form:input path="firstName"/>
			</div>
			<div class="add" id = "add3">
			<form:label path="lastName">Last Name:</form:label>
<%-- 			<form:errors class="error" path = "name"/> --%>
			<form:input path="lastName"/>
			</div>
			<div class="add" id = "add4">
			<form:label path="age">Age:</form:label>
<%-- 			<form:errors class="error" path = "name"/> --%>
			<form:input path="age"/>
			</div>
			<input class="btn" id ="submit" type = "submit" value="Create"/>
		</form:form>
	</div>
</body>
</html>