<%@page import="com.login.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
response.setHeader("Pragma", "no-cache");
response.setDateHeader("Expires", 0);
User user = (User) session.getAttribute("loggedUser");

if(user == null){
	response.sendRedirect("login.jsp");
	return;
}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile</title>

<link rel="stylesheet" href="style.css">

</head>
<body>

<div class="container">

<h2>Welcome</h2>

<h3>Username : <%= user.getUsername() %></h3>

<h3>Email : <%= user.getEmail() %></h3>

<a href="logout">
	<button>Logout</button>
</a>

</div>

</body>
</html>