<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>

<link rel="stylesheet" href="style.css">

</head>
<body>

<div class="container">

<h2>Login Form</h2>

<form action="login" method="post">

	<input type="text" name="username" placeholder="Enter Username">
	<br><br>

	<input type="password" name="password" placeholder="Enter Password">
	<br><br>

	<button type="submit">Login</button>

</form>

<%
String error = (String)request.getAttribute("error");

if(error != null){
%>

<h3 class="error"><%= error %></h3>

<%
}
%>

</div>

</body>
</html>