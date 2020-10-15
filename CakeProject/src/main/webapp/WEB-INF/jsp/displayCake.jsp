<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="headerPage.jsp" %>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cake Information</title>
<style>
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
</head>
<body>
<h1 align="center"style="font-family:helvitica;"> Cake Details </h1>
	<center>
		<table  class="tg" style="width:30%; height:50%; border: solid 2px black">
			
		 	<tr>
				<td>Cake ID</td>
						<td>:</td>
				
						<td>${cake.cakeId }</td>
			</tr><br>
			<tr>
				<td>Cake Name</td>
				<td>:</td>
				<td>${cake.cakeName }</td>
			</tr><br>
			<tr>
				<td>Cake Category</td>
				<td>:</td>
				<c:forEach items="${cake.cakeCategory}" var="category">
				
				<td>${category }</td>
			    </c:forEach>
				
			</tr>
			<tr>
				<td>Cake Weight</td>
				<td>:</td>
				<td>${cake.cakeWeight }</td>
			</tr>
			<tr>
				<td>Cake Price</td>
			<td>:</td>
				<td>${cake.cakePrice }</td>
			</tr>
		
		</table>
		<br><br>
		<a href="<c:url value='/cakeinformation'/>"><span>Go Back</span></a>
	</center>

</body>
</html>