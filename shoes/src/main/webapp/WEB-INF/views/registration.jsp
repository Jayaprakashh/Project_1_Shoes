<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" href="./resources/css/shoe.css">

<link rel="stylesheet" href="./resources/css/reg.css">


<title>Registration Page</title>
</head>
<body>
	<jsp:include page="Header.jsp" />
	<br>
	<br>
	<h2>Registration Page</h2>
	<hr>
	 
	<center>
	<form action="registration">
  <div class="containers">
  <table>
  <tr>
    <td><label><b>UserId</b></label></td><td>
    <input type="text" placeholder="Enter UserID" name="userId" required focus><td>
    </tr><tr>
     
    <td>
    <label><b>Name</b></label></td><td>
    <input type="text" placeholder="Enter Name" name="name" required><td>
   </tr>
    
    <tr>
    <td>
    <label><b>Password</b></label></td><td>
    <input type="password" placeholder="Enter Password" name="password" required><td>
	</tr>
	 
    <tr>
    <td>
    <label><b>Repeat Password</b></label></td><td>
    <input type="password" placeholder="Repeat Password" name="psw-repeat" required><td>
    </tr>
    
    <tr>
    <td>
    <label><b>Age</b></label></td><td>
    <input type="text" placeholder="Enter Age" name="age" required><td>
    </tr>
    
    <tr>
    <td>
    <label><b>Gender</b></label></td><td>
    <input type="radio" name="gen" required/>M<input type="radio" name="gender" required/>F</td>
    </tr>
    
    <tr>
    <td>
    <label><b>Email</b></label></td><td>
    <input type="text" placeholder="Enter Email" name="email" required><td>
	</tr>
 
    <tr>
    <td><label><b>Phone</b></label></td>
	<td><input type="text" placeholder="Enter Address" name="phone" required></td>
	</tr>
	 
    <tr>
    <td><label><b>City</b></label></td>
	<td><input type="text" placeholder="Enter Address" name="address" required></td>
	</tr>
 
   </table>

    <div class="clearfix">
      <button type="button" class="loginbtn" >Cancel</button>
      <button type="submit" class="loginbtn" >SignUp</button>
    </div>
  </div>
</form>
</center>

	<jsp:include page="Footer.jsp" />
</body>
</html>