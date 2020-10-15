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
<title>Cake Information Page</title>

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
padding-left:37%; 
font-style:arial
}

</style>

</head>
<body>
<h1>Enter Cake Information</h1>
<c:url var="addAction" value="/cake/add"></c:url>
<form:form action="${addAction }" modelAttribute="cake">
<div >
<table  style="border: 1px black solid;" align="center" cellpadding="5" cellspacing="5" >
			<tr>
				<td>Cake ID:</td>
				<td><form:input path="cakeId"/></td>		

			</tr>
			<tr>
				<td>Cake Name:</td>
				<td><form:input path="CakeName" /></td>				
			</tr>
		
			<tr>
				<td>Cake weight:</td>
				<td><form:input path="cakeWeight" /></td>
			</tr>
			<tr>
				<td> Cake category:</td>
					<td>Egg Cake <form:radiobutton path="cakeCategory" value="Egg cake"/>
				        Eggless Cake <form:radiobutton  path="cakeCategory" value="Eggless cake"/>
				        
				</td>
			</tr>
				<tr>
				<td>Cake Price:</td>
				<td><form:input path="cakePrice" /></td>
			</tr>
				
			
			
			<td colspan="2" align="center"><c:if test="${!empty cake.cakeName}">
						<input type="submit" value="<spring:message text="Update"/>" />
					</c:if> <c:if test="${empty cake.cakeName}">
						<input type="submit" value="<spring:message text="Add Cake's"/>" />
						 
					</c:if></td>
			</tr>
		</table>
		</div>
		
</form:form>
<br>
	<h2 align="center">Cake Details List</h2>
	<c:if test="${!empty allCakes}">
		<table class="tg" align="center">
			<tr>
				<th width="80">Cake ID</th>
				<th width="120">Cake Name</th>
				<th width="120">Cake Category</th>
				<th width="80">Cake weight</th>
				<th width="100">Cake Price</th>
				<th width="150">View/Update/Delete</th>
			</tr>
			<c:forEach items="${allCakes}" var="cake">
				<tr>
				<td>${cake.cakeId }</td>
				<td>${cake.cakeName }</td>
				<td>${cake.cakeCategory }</td>
				
							<td>${cake.cakeWeight}</td>
				<td>${cake.cakePrice }</td>
				<td><a href="<c:url value='/viewCake/${cake.cakeId}' />">View</a> |
					<a href="<c:url value='/update/${cake.cakeId}' />">Update</a>
						| <a href="<c:url value='/delete/${cake.cakeId}' />">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>

</body>
</html>