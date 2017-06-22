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
	<h3>List of Orders</h3>
	<table class="coffeeTable" border="1">
		<tr>
			<th>OrderId</th>
			<th>Order Date</th>
			<th>First Name</th>
			<th>Second Name</th>
			<th>Quantity</th>
			<th>Total Amount</th>
		</tr>
		<c:forEach items="${orders}" var="order">
			<tr>
				<td >${order.id}</td>
				<td >${order.orderDate}</td>
				<td >${order.person.firstName}</td>
				<td >${order.person.LastName}</td>
				<td >${order.quantity}</td>
				<td >${order.totalAmount}</td>
			</tr>
		</c:forEach>
	</table>
	<br /> <br />
	<a href="/admin/" style="text-decoration:none">Admin Page</a>
</body>
</html>