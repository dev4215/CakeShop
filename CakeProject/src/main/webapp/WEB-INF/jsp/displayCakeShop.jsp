<%@ include file="headerPage.jsp" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
.centre{
  float: center;
}

body
{
background-color:pink;
}
span
{
color:blue;
font-size:35px;}
.tg 
{
 border-spacing:0 15px; 
 
 }
 td
{ 
  width:150px; 
 text-align:center; 
 padding:5px ;
 font-size:20px;
              
  } 
 


</style>
<title>Cake Shop Information</title>
</head>
<body>
<h1 align="center"style="font-family:helvitica;"> Cake Shop Details </h1>
	
	<center>
		<table class="tg" style="border: 2px black solid;">
			
	   		<tr>
				<td>Shop ID</td>
				<td>:</td>
				<td>${cakeshop.shopId }</td>
			</tr>
			<tr>
				<td>Shop Name</td>
				<td>:</td>
				<td>${cakeshop.shopName }</td>
			</tr>
			<tr>
				<td>Address</td>
				<td>:</td>
				<td>${cakeshop.address }</td>
			</tr>
			<tr>
				<td>Phone No</td>
				<td>:</td>
				<td>${cakeshop.phoneNo }</td>
			</tr>
			<tr>
				<td>Registration Date</td>
				<td>:</td>
				<td>${cakeshop.registeredDate }</td>
			</tr>
			<tr>
				<td>Manager Name</td>
				<td>:</td>
				<td>${cakeshop.managerName }</td>
			</tr>
		</table>
		<a href="<c:url value='/CakeShopinformation'/>"><span>Go Back</span></a>
	</center>
</body>
</html>