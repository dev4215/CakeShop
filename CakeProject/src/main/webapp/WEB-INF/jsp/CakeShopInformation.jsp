<%@ include file="headerPage.jsp"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" isELIgnored="false"%>

<html>
<head>
<title>Cake Shop Information Page</title>
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
background-color: pink;
}
h1
{
padding-left:40%; 
font-style:arial
}
</style>
</head>
<body>
<h1>Enter Shop Details</h1>

	<c:url var="addAction" value="/CakeShop/add"></c:url>

	<form:form action="${addAction}" modelAttribute="cakeshop">
<div >
<table  style="border: 1px black solid;" align="center" cellpadding="5" cellspacing="5" >
			<tr>
				<td>Shop ID:</td>
				<td><form:input path="shopId"/></td>		

			</tr>
			<tr>
				<td>Shop Name:</td>
				<td><form:input path="shopName" /></td>				
			</tr>
		
			<tr>
				<td>Address:</td>
				<td><form:input path="address" /></td>
			</tr>
			<tr>
			<tr>
				<td>Phone No.:</td>
				<td><form:input path="phoneNo" /></td>
			</tr>
			<tr>
				<td>Register Date:</td>
				<td><form:input path="registeredDate" /></td>
			</tr>
			<tr>
				<td>Manager Name:</td>
				<td><form:input path="managerName" /></td>
			</tr>
			
			
			<td colspan="2" align="center"><c:if test="${!empty cakeshop.shopName}">
						<input type="submit" value="<spring:message text="Update"/>" />
					</c:if> <c:if test="${empty cakeshop.shopName}">
						<input type="submit" value="<spring:message text="Add CakeShop"/>" />
					</c:if></td>
			</tr>
		</table>
		</div>
		
</form:form>
<br>
	<h2 align="center">Cake Shop Details</h2>
	<c:if test="${!empty allCakeShops}">
		<table class="tg" align="center">
			<tr>
				<th width="80">Shop ID</th>
				<th width="120">Shop Name</th>
				<th width="120">Address</th>
				<th width="80">Phone No</th>
				<th width="100">Registered date</th>
				<th width="100">Manager Name</th>
				<th width="150">View/Update/Delete</th>
			</tr>
			<c:forEach items="${allCakeShops}" var="cakeshop">
				<tr>
				<td>${cakeshop.shopId}</td>
					<td>${cakeshop.shopName}</td>
					
					<td>${cakeshop.address}</td>
					<td>${cakeshop.phoneNo}</td>
					<td>${cakeshop.registeredDate}</td>
					<td>${cakeshop.managerName}</td>
			<td><a href="<c:url value='/viewCakeShop/${cakeshop.shopId}' />">View</a> |
					<a href="<c:url value='/updateCakeShop/${cakeshop.shopId}' />">Update</a>
						| <a href="<c:url value='/deleteCakeShop/${cakeshop.shopId}' />">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
</body>
</html>