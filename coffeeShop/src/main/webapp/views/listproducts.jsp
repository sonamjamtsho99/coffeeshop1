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
	<h3>List of Products</h3>
	<table class="coffeeTable">
		<tr>
			<th>id</th>
			<th>productName</th>
			<th>description</th>
			<th>price</th>
			<th>productType</th>
		</tr>
		<c:forEach items="${products}" var="product">
			<tr>
				<td >${product.id}</td>
				<td >${product.productName}</td>
				<td >${product.description}</td>
				<td >${product.price}</td>
				<td >${product.productType}</td>
			</tr>
		</c:forEach>
	</table>
	<br /> <br />
	<a href="/public/" style="text-decoration:none">Home</a>
</body>
</html>