<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ include file="headerPage.jsp" %>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Information</title>
<style>
span
{
color:blue;
font-size:35px;}
.tg 
{
 border-spacing:0 10px; 
 
 }
 td
{ 
  width:150px; 
 text-align:center; 
 padding:5px ;
 font-size:20px;
              
  } 
  body
{
background-color: pink;
}
 
</style>
</head>
<body>
<h1 align="center"style="font-family:helvitica;"> Order Details </h1>
	<center>
		<table  class="tg" style="width:50%; height:50%;  border: solid 2px black">
			
			<tr>
				<td>Order ID</td>
				<td>:</td>
			    <td>${customerorder.orderId }</td>
			</tr><br>
			<tr>
				<td>First Name</td>
				<td>:</td>
				<td>${customerorder.customerFirstName }</td>
			</tr><br>
			<tr>
				<td>Last Name</td>
				<td>:</td>
				<td>${customerorder.customerLastname }</td>
			</tr><br>
			<tr>
				<td>Customer Address</td>
						<td>:</td>	
				<td>${customerorder.customerAddress}</td>
			</tr>
			<tr>
				<td>Contact No.</td>
				<td>:</td>
				<td>${customerorder.customerContact }</td>
			</tr>
			<tr>
				<td>Order Date</td>
			<td>:</td>
				<td>${customerorder.orderDate }</td>
			</tr>
				<tr>
				<td>Ordered Cake Name</td>
			<td>:</td>
				<td>${customerorder.orderedCakeName }</td>
			</tr>
				<tr>
				<td>Order Quantity</td>
			<td>:</td>
				<td>${customerorder.orderQuantity }</td>
			</tr>
				<tr>
				<td>Cake Price</td>
			<td>:</td>
				<td>${customerorder.orderCakePrice }</td>
			</tr>
		
		</table>
		<br><br>
		<a href="<c:url value='/orderinformation'/>"><span>Go Back</span></a>
	</center>


</body>
</html>