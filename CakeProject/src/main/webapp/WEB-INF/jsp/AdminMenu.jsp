<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="headerPage.jsp"%>
    <%@ include file="success.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
  .fixed-header{
        top: 0;
    }
      .fixed-header{
        width: 100%;
        position: fixed;        
        background:#800080;
        padding: 10px 0;
        color: #fff;
    }
  .container{
        width: 80%;
        margin: 0 auto; /* Center the DIV horizontally */
    }
    nav a{
        color: #fff;
        text-decoration: none;
        padding: 7px 25px;
        display: inline-block;
    }</style>
</head>
<body>
<div class="fixed-header">
        <div class="container">
<nav>
 <a href="<c:url value='/' />">Home</a>
 <a href="cakeinformation">Add Cake's</a>
  <a href="CakeShopinformation">Add Shops</a>
   <a href="orderinfo">order list</a>
   </nav>
   </div>
   </div>

</body>
</html>