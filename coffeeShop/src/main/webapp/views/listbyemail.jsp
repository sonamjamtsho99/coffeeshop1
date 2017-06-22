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
	<h3>Enter your email to update profile</h3>
<form action="getProfile" method="GET">	
<input type="text" name="id" value="id">
<button type="submit">Update Profile</button>
 </form>
</body>
</html>