<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" isELIgnored="false"%>
<%@ include file="headerPage.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.tg {
	border-collapse: collapse;
	border-spacing: 0;
	border-color: #ccc;
}

.tg td {
	font-family: Arial, sans-serif;
	font-size: 14px;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #ccc;
	color: #333;
	background-color: #fff;
}

.tg th {
	font-family: Arial, sans-serif;
	font-size: 14px;
	font-weight: normal;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #ccc;
	color: #333;
	background-color: #f0f0f0;
}

.tg .tg-4eph {
	background-color: #f9f9f9
}
body
{
background-color:pink;
}
h1
{
padding-left:30%; 
font-style:arial
}

</style>
</head>
<body>
<h2 align="center">Order Details List</h2>
	<c:if test="${!empty allOrders}">
		<table class="tg" align="center">
			<tr>
				<th width="70">Order ID</th>
				<th width="120">First Name</th>
				<th width="120">Last Name</th>
				<th width="80">Address</th>
				<th width="100">Contact No.</th>
				<th width="100">Order Date</th>
				<th width="100">Orderd Cake name</th>
				<th width="70">Cake Quantity</th>
				<th width="90">Cake Price</th>

			</tr>
			<c:forEach items="${allOrders}" var="order">
				<tr>
				<td>${order.orderId }</td>
				<td>${order.customerFirstName }</td>
	            <td>${order.customerLastname}</td>
				<td>${order.customerAddress }</td>
				<td>${order.customerContact }</td>
				<td>${order.orderDate }</td>
					<td>${order.orderedCakeName }</td>
				
					<td>${order.orderQuantity }</td>
						<td>${order.orderCakePrice }</td>
				
							</tr>
			</c:forEach>
		</table>
	</c:if>
</body>
</html>