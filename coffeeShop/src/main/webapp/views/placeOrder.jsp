<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Place Order</title>
</head>
<body>
<h3>Order</h3>
<form:form action="/user/saveOrder" modelAttribute="order">	
    <table>
      <tr>
        <td><form:label path="orderDate">Order Date</form:label></td>
        <td><form:input path="orderDate" /></td>
      </tr>
      <tr>
        <td><form:label path="quantity">Quantity:</form:label></td>
        <td><form:input path="quantity" /></td>
      </tr>
      <%-- <tr>
        <td><form:label path="product.productName">Product Name:</form:label></td>
        <td><form:input path="product.productName" /></td>
      </tr> --%>
      <tr>
        <td><form:label path="totalAmount">Total Amount</form:label></td>
        <td><form:input path="totalAmount" /></td>
      </tr>
      <tr>
        <td colspan="2"><input type="submit" value="Place Order" /></td>
      </tr>
    </table>
    </form:form>
</body>
</html>