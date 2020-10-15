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
<title>Order Success Page</title>
<style>
body
{
background-color:pink;

}
span
{
color:red;
}
h2
{
color:blue;
font-size:35px;
padding-left:40%;
}
h1{
padding-left:30%;
}

</style>

</head>
<body>


<h1>Your order of <span>${order.orderedCakeName }</span style="color:red"> is Successfully Done....</h1><br>
		<a href="<c:url value='/orderinformation'/>"><h2>For more Orders click here</h2></a>
	


		
		
		
</body>
</html>