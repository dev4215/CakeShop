<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><%@ include file="headerPage.jsp"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cake Photos</title>
<style>
*{
margin:0px;
padding:0px;
}
body
{
font-family:Arial;
background-image:url(resources/images/bggallery.jpg);

}

.cards
{
width:25%;
background-color:white;
border-radius:5px;
margin:40px;
box-shadow:2px 2px 10px black;
display:inline-block;
}
.image img
{
width:100%;
border-top-right-radius:5px;
border-top-left-radius:5px;

}
.title
{
text-align:center;
padding:5px;
}
.dis{
text-align:center;
padding:4px;
}
button{
margin-top:30px;
margin-bottom:30px;
background-color:white;
border:1px solid black;
padding:5px;
border-radius:5px;
cursor:pointer;
}
button:hover{
background-color:black;
color:white;
transition:.5s;
}
</style>
</head>
<body>
<div class="main">

<div class="cards">
<div class="image">
<img src="resources/images/a.jpg" alt="img1">
</div>
<div class="title">
<h1> Chocolate Cake</h1>
</div>
<div class="dis">
<p>Rs.300</p>
<a href="orderinformation"><button>Order Now</button></a>
</div >
</div>

<div class="cards">
<div class="image">
<img src="resources/images/e.jpg" alt="img2" height="200px" width="20%">
</div>
<div class="title">
<h1> strawberry Cake</h1>
</div>
<div class="dis">
<p>Rs.400</p>
<a href="orderinformation"><button>Order Now</button></a></div >
</div>

<div class="cards">
<div class="image">
<img src="resources/images/rainbow-cake.jpg" alt="img3">
</div>
<div class="title">
<h1> Rainbow Cake</h1>
</div>
<div class="dis">
<p>Rs.600</p>
<a href="orderinformation"><button>Order Now</button></a>
</div >
</div>

<div class="cards">
<div class="image">
<img src="resources/images/photocake2.jpg" alt="img4">
</div>
<div class="title">
<h1> Photo Cake</h1>
</div>
<div class="dis">
<p>Rs.800</p>
<a href="orderinformation"><button>Order Now</button></a>
</div >
</div>

<div class="cards">
<div class="image">
<img src="resources/images/princess cake.jpg" alt="img1">
</div>
<div class="title">
<h1> Princess Cake</h1>
</div>
<div class="dis">
<p>Rs.600</p>
<a href="orderinformation"><button>Order Now</button></a>
</div >
</div>

<div class="cards">
<div class="image">
<img src="resources/images/red-velvet.jpg" alt="img1">
</div>
<div class="title">
<h1>Red Velvet Cake</h1>
</div>
<div class="dis">
<p>Rs.750</p>
<a href="orderinformation"><button>Order Now</button></a>
</div >
</div>

<div class="cards">
<div class="image">
<img src="resources/images/d.png" alt="img1">
</div>
<div class="title">
<h1> Chocolate Cake</h1>
</div>
<div class="dis">
<p>Rs.550</p>
<a href="orderinformation"><button>Order Now</button></a>
</div >
</div>

<div class="cards">
<div class="image">
<img src="resources/images/vanilla-cake.jpg" alt="img1">
</div>
<div class="title">
<h1> Vanilla Cake</h1>
</div>
<div class="dis">
<p>Rs.400</p>
<a href="orderinformation"><button>Order Now</button></a>
</div >
</div>



<div class="cards">
<div class="image">
<img src="resources/images/cup.jpg" alt="img1">
</div>
<div class="title">
<h1>Cup Cake</h1>
</div>
<div class="dis">
<p>Rs.200</p>
<a href="orderinformation"><button>Order Now</button></a>
</div >
</div>








</div>
</body>
</html>