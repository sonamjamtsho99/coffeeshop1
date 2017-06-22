<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form:form modelAttribute="person" action="/user/saveUpdate">
	ID:<form:input path="firstName" placeholder="firstName" value="${person.id}"/> <br />
    FirstName:<form:input path="firstName" placeholder="firstName" value="${person.firstName}"/> <br />
    LastName: <form:input path="lastName" placeholder="lastName" value="${person.lastName}"/> <br />
    Email:<form:input path="email" placeholder="email" value="${person.email}"/> <br />
    Phone: <form:input path="phone" placeholder="phone" value="${person.phone}"/> <br />
   <%--  City:<form:input path="city" placeholder="city" value="${person.address.city}"/> <br />
    State: <form:input path="state" placeholder="state" value="${person.address.phone}"/> <br /> --%>
    <input type="submit" value="Update" />
</form:form>
</body>
</html>