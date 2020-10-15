<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="headerPage.jsp" %>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Log in here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<style>
body {
		color: #fff;
		background: pink;
		font-family: 'Roboto', sans-serif;
	}
.form-control:focus{
		border-color: #5cb85c;
	}
 .form-control, .btn{        
        border-radius: 3px;
    }
     .Login-form{
		width: 400px;
		margin: 0 auto;
		padding: 30px 0;
	}
	.Login-form h2{
		color: #636363;
        margin: 0 0 15px;
		position: relative;
		text-align: center;
    }
     .Login-form h2:before, .Login-form h2:after{
		content: "";
		height: 2px;
		width: 30%;
		background: #d4d4d4;
		position: absolute;
		top: 50%;
		z-index: 2;
	}
	.Login-form h2:before{
		left: 0;
	}
	.Login-form h2:after{
		right: 0;
	}
	.Login-form form{
		color: #999;
		border-radius: 3px;
    	margin-bottom: 15px;
        background: #f2f3f7;
        box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
        padding: 30px;
    }
     .Login-form .form-group{
		margin-bottom: 20px;
	}
	.Login-form .btn{        
        font-size: 16px;
        font-weight: bold;		
		min-width: 140px;
        outline: none !important;
    }
    
	</style>
</head>
<body>
<div class="Login-form">
    <form:form action="loginProcess" modelAttribute="login">
		<h2>Log In</h2>
		
  <div class="form-group">
  	<i class="fa fa-user"></i>
        	<form:input type="email" path="userName" class="form-control" name="username" placeholder="Username" required="required"/>
        </div>
        <div class="form-group">
        <i class="fa fa-lock"></i>
            <form:input type="password" path="password"  class="form-control" name="password" placeholder="Password" required="required"/>
        </div>
        <div class="form-group">
						<input type="submit" class="btn btn-primary btn-block btn-lg" value="Login">
					</div>
        </form:form>
        </div>
</body>
</html>