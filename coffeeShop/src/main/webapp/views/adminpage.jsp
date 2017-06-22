<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>admin Page</title>
</head>
<body>
	<div>
		<h3>Links</h3>
		<a href="/admin/createperson" style="text-decoration: none">1. Add
			Person</a> <br /> <a href="/admin/listperson"
			style="text-decoration: none">2. List Person</a> <br /> <a
			href="/admin/listorder" style="text-decoration: none">2. List
			Order</a> <br /> <a href="/admin/createproduct"
			style="text-decoration: none">2. Add Product</a> <br /> <a
			href="/admin/updateproduct" style="text-decoration: none">2.
			Update Product</a> <br /> <a href="/admin/deleteroduct"
			style="text-decoration: none">2. Delete Product</a> <br /> <a
			href="/public/listproducts" style="text-decoration: none">2. List
			product</a> <br />
	</div>
	<%-- <c:url value="/logout" var="logoutUrl" />
	<form id="logout" action="${logoutUrl}" method="post">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
	</form>
	<c:if test="${pageContext.request.userPrincipal.name != null}">
		<a href="javascript:document.getElementById('logout').submit()">Logout</a>
	</c:if> --%>
</body>
</html>