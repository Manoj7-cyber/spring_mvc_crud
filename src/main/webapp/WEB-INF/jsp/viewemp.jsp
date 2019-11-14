<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Employee List</title>
</head>
<body>
	<h1>All Employee List</h1>
	<table border="2" width="70%" cellpadding="2">
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Salary</th>
			<th>Desgination</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
		<c:forEach var="emp" items="${list}">
		<tr>
			<td>${emp.id}</td>
			<td>${emp.name}</td>
			<td>${emp.salary}</td>
			<td>${emp.desgination}</td>
			<td><a href="editemp/${emp.id}">Edit</a></td>
			<td><a href="deleteemp/${emp.id}">Delete</a></td>
		</tr>
		</c:forEach>
	</table>
	<br>
	<a href="empform">Add new Employee</a>
</body>
</html>