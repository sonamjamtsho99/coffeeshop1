<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="<c:url value="/css/styles.css" />" rel="stylesheet" />
<title>Product list</title>
</head>
<body>
	<h3>List of Person</h3>
	<table class="coffeeTable">
		<tr>
			<th>ID</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Email</th>
			<th>Phone</th>
		</tr>
		<c:forEach items="${persons}" var="person">
			<tr>
				<td >${person.id}</td>
				<td >${person.firstName}</td>
				<td >${person.lastName}</td>
				<td >${person.email}</td>
				<td >${person.phone}</td>
			</tr>
		</c:forEach>
	</table>
	<br /> <br />
	<a href="/admin/" style="text-decoration:none">Admin Page</a>
</body>
</html>