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
<title>order page</title>
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
padding-left:42%; 
font-style:arial
}

</style>
</head>
<body>
<h1>Order Here</h1>

<c:url var="addAction" value="/order/add"></c:url>
<form:form action="${addAction }" modelAttribute="customerorder">
<div >
<table  style="border: 1px black solid;" align="center" cellpadding="5" cellspacing="5" >
			<tr>
				<td>order ID:</td>
				<td><form:input path="orderId"/></td>		

			</tr>
			<tr>
				<td>First Name:</td>
				<td><form:input path="customerFirstName" /></td>				
			</tr>
				<tr>
				<td>Last Name:</td>
				<td><form:input path="customerLastname" /></td>				
			</tr>
					
						<tr>
				<td>Address:</td>
				<td><form:input path="customerAddress" /></td>				
			</tr>
		
			<tr>
				<td>Contact No.:</td>
				<td><form:input path="customerContact" /></td>
			</tr>
				<tr>
				<td>Order Date:</td>
				<td><form:input path="orderDate" /></td>
				
			</tr>
				<tr>
				<td>Ordered Cake Name:</td>
				<td><form:input path="orderedCakeName" /></td>
			</tr>
			<tr>
				<td> Cake category:</td>
					<td>Egg Cake <form:radiobutton path="orderCakeCategory" value=" Egg Cake"/>
				Eggless Cake <form:radiobutton path="orderCakeCategory" value="Eggless Cake"/>
				</td>
			</tr>
				<tr>
				<td>Cake Quantity:</td>
				<td><form:input path="orderQuantity" /></td>
			</tr>
					<tr>
				<td>Cake Price:</td>
				<td><form:input path="orderCakePrice" /></td>
			</tr>
				<tr>
			<td colspan="2" align="center"><c:if test="${!empty customerorder.customerFirstName}">
						<input type="submit" value="<spring:message text="Update"/>" />
					</c:if> <c:if test="${empty customerorder.customerFirstName}">
						<input type="submit" value="<spring:message text="Order Now"/>" />
					</c:if></td>
			</tr>
		</table>
		</div>
		</form:form>
		<br>
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
				<th width="100">Cake Category</th>
				<th width="70">Cake Quantity</th>
				<th width="90">Cake Price</th>
				<th width="150">View/Update/Delete</th>
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
	            <td>${order.orderCakeCategory }</td>
				
					<td>${order.orderQuantity }</td>
						<td>${order.orderCakePrice }</td>
				
				
				<td><a href="<c:url value='/viewOrder/${order.orderId}' />">View</a> |
					<a href="<c:url value='/updateOrder/${order.orderId}' />">Update</a>
						| <a href="<c:url value='/deleteOrder/${order.orderId}' />">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
		

</body>
</html>