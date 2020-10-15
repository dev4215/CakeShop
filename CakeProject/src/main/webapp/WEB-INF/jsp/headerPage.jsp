<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cake Shop</title>
<style type="text/css">
    body{        
        padding-top: 60px;
        padding-bottom: 40px;
       
    }
    .fixed-header, .fixed-footer{
        width: 100%;
        position: fixed;        
        background:#800080;
        padding: 10px 0;
        color: #fff;
    }
    .fixed-header{
        top: 0;
    }
    .fixed-footer{
        bottom: 0;
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
    }
</style>
</head>
<body>
 <div class="fixed-header">
        <div class="container">
            <nav>
                <a href="<c:url value='/' />">Home</a>
                <a href="aboutus">About Us</a>
                <a href="registration">Sign Up</a>
                <a href="LoginPage">Log In</a>
                <a href="AdminMenu">Admin Menu</a>
                <a href="gallery">Our Products</a>
                 <a href="orderinformation">Order Now</a>
                   
                  
                 
            </nav>
        </div>
    </div>  
    <div class="fixed-footer">
        <div class="container" align="center">Copyright &copy; 2020 Cake Shop</div>        
    </div>
</body>
</html>