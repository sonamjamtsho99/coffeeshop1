<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign up</title>
</head>
<body>
<h3>Signup Form</h3>
<form:form action="/public/addPerson" modelAttribute="person">	
    <table>
      <tr>
        <td><form:label path="firstName">First Name:</form:label></td>
        <td><form:input path="firstName" /></td>
      </tr>
      <tr>
        <td><form:label path="lastName">Last Name:</form:label></td>
        <td><form:input path="lastName" /></td>
      </tr>
      <tr>
        <td><form:label path="email">Email:</form:label></td>
        <td><form:input path="email" /></td>
      </tr>
      <tr>
        <td><form:label path="phone">Phone:</form:label></td>
        <td><form:input path="phone" /></td>
      </tr>
      <tr>
        <td><form:label path="address.city">City:</form:label></td>
        <td><form:input path="address.city" /></td>
      </tr>
      <tr>
        <td><form:label path="address.state">State:</form:label></td>
        <td><form:input path="address.state" /></td>
      </tr>
      <tr>
        <td><form:label path="address.country">country:</form:label></td>
        <td><form:input path="address.country" /></td>
      </tr>
      <tr>
        <td><form:label path="address.zipcode">zipcode:</form:label></td>
        <td><form:input path="address.zipcode" /></td>
      </tr>
      <tr>
        <td><form:label path="enable">enable</form:label></td>
        <td><form:checkbox path="enable" /></td>
      </tr>
      <tr>
        <td colspan="2"><input type="submit" value="Sign up" /></td>
      </tr>
    </table>
    </form:form>
</body>
</html>