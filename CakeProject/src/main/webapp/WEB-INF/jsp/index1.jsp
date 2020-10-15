<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ include file="headerPage.jsp" %>
        
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
h1
{
padding-left:35%;
padding-top:10%;
font-family:Helvetica Neue;
  font-style: italic;
  font-size:40px;

}
.time
{
width:25%;
padding-top:8%;
font-size:20px;
display:inline-block;
padding-left:30%;
}
.maindiv
{
width:100%;
height:100%;
position:absolute;
transform:translate:(-50%,-50%);
background-image:url('resources/images/white_cake.jpg');
background-size:100% 100%;

animation: slider 30s infinite linear;
}

@keyframes slider{
0%{background-image: url(resources/images/white_cake.jpg);}
35%{background-image: url(resources/images/f1.jpg);}
65%{background-image: url(resources/images/f2.jpg);}
95%{background-image: url('resources/images/11.png');}
}

</style>
  
</head>
<body>
<div class="maindiv">

<h1> CELEBRATION CAKES</h1>
<div class="time" style="padding-left:10%;font-size:20px;">
		<h2>Work Time</h2>
		<p><ul><li>Monday- Friday<br> 8:00am-8:30pm</li>
		<li>Saturday-Sunday<br>
		10am-4:30pm</li>
		</ul></p>
		
		</div>
		
<div class="time">
<h2>Contact Info</h2>
<p><ul>
<li>Celebration Cake shop</li>
<li><span class="glyphicon glyphicon-earphone"></span>(02162)-234584</li>
<li>celebrationcakes@gmail.com</li>
<li>4th Floor,Thane Mumbai,Maharashtra.</li>
</ul></p>

</div>

</div>

</body>
</html>