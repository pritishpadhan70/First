<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>



</head>
<body bgcolor="#7EC8C2">
	
	<a href="home.jsp">Back</a>
	
	
	
	<%
		Boolean isAvailable=(Boolean)request.getAttribute("isAvailable");
		
	%>	
	
	
	<center><h3>Add Data</h3>
	<form action="AddData">
	
	<table  >
		<tr>
			<td>Enter User ID</td>
			<td><input name = "userid" type="text"></td>

		</tr>
		<tr>
			<td>Enter Password</td>
			<td><input name = "pass" type="password"></td>
		</tr>
		<tr>
			<td>Enter Email</td>
			<td><input name = "email" type="text"></td>
		</tr>
		<tr>
			<td>Enter Mob No.</td>
			<td><input name = "mobno" type="text"></td>
		</tr>
		<tr>
			<td>Enter Name</td>
			<td><input name = "name" type="text"></td>
		</tr>
		<tr>
			<td><input type="submit"></td>
		</tr>
	</table>
	
	</form>
	</center>
	<%
		if(isAvailable){
	%>
	<center><h4><font size="15 px" color="green"> Data Successfully Inserted to DB.</font></h4></center>
	
	<%} %>
</body>
</html>