<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="headerPage.jsp" %>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">

<title>Insert title here</title>
<style>
	body {
		color: #fff;
		background: pink;
		font-family: 'Roboto', sans-serif;
	}
    .form-control{
		height: 40px;
		box-shadow: none;
		color: #969fa4;
	}
	.form-control:focus{
		border-color: #5cb85c;
	}
    .form-control, .btn{        
        border-radius: 3px;
    }
	.signup-form{
		width: 400px;
		margin: 0 auto;
		padding: 30px 0;
	}
	.signup-form h2{
		color: #636363;
        margin: 0 0 15px;
		position: relative;
		text-align: center;
    }
	.signup-form h2:before, .signup-form h2:after{
		content: "";
		height: 2px;
		width: 30%;
		background: #d4d4d4;
		position: absolute;
		top: 50%;
		z-index: 2;
	}	
	.signup-form h2:before{
		left: 0;
	}
	.signup-form h2:after{
		right: 0;
	}
    .signup-form .hint-text{
		color: #999;
		margin-bottom: 30px;
		text-align: center;
	}
    .signup-form form{
		color: #999;
		border-radius: 3px;
    	margin-bottom: 15px;
        background: #f2f3f7;
        box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
        padding: 30px;
    }
	.signup-form .form-group{
		margin-bottom: 20px;
	}
	.signup-form .btn{        
        font-size: 16px;
        font-weight: bold;		
		min-width: 140px;
        outline: none !important;
    }
	.signup-form .row div:first-child{
		padding-right: 10px;
	}
	.signup-form .row div:last-child{
		padding-left: 10px;
	}    	
    .signup-form a{
		color: #fff;
		text-decoration: underline;
	}
    .signup-form a:hover{
		text-decoration: none;
	}
	.signup-form form a{
		color: #5cb85c;
		text-decoration: none;
	}	
	.signup-form form a:hover{
		text-decoration: underline;
	}  
	.text-center
	{
	color:black;
	
	}
</style>
</head>
<body>

<div class="signup-form">
    <form:form action="user/add" modelAttribute="registration">
		<h2>Register</h2>
		<p class="hint-text">Create your account. It's free and only takes a minute.</p>
		 <div class="form-group">
        	<form:input type="text" path="Reg_Id" class="form-control" name="Id" placeholder="Registration Id" required="required"/>
        </div>
        <div class="form-group">
			<div class="row">
				<div class="col-xs-6"><form:input type="text" path="firstName" class="form-control" name="first_name" placeholder="First Name" required="required"/></div>
				<div class="col-xs-6"><form:input type="text" path="lastName" class="form-control" name="last_name" placeholder="Last Name" required="required"/></div>
			</div>        	
        </div>
        <div class="form-group">
        	<form:input type="text" path="Contact_no" class="form-control" name="contact" placeholder="Contact No." required="required"/>
        </div>
        <div class="form-group">
        	<form:input type="email" path="email_Id" class="form-control" name="email" placeholder="Email" required="required"/>
        </div>
		<div class="form-group">
            <form:input type="password" path="password"  class="form-control" name="password" placeholder="Password" required="required"/>
        </div>
		<div class="form-group">
            <form:input type="password" path="confirm_password" class="form-control" name="confirm_password" placeholder="Confirm Password" required="required"/>
        </div>        
		<div class="form-group">
            <button type="submit" class="btn btn-success btn-lg btn-block">Register Now</button>
        </div>
    </form:form>
	<div class="text-center">Already have an account? <a href="Login" style="color:black;">Log in</a></div>
</div>
</body>
</html>