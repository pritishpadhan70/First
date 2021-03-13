<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<style>
</style>

</head>
<body bgcolor="gray">
	
	
	<%
		String msg=(String)request.getAttribute("msg");
		if(null!=msg){
			
	%>
	<center><font color="red"><h4><%= msg %></h4></font></center>
	<%
		}
	%>
	
	
	<center><h3>Login</h3>
	<form action="login">
	
	<table  >
		<tr>
			<td>User ID</td>
			<td><input name = "userid" type="text"></td>

		</tr>
		<tr>
			<td>Password</td>
			<td><input name = "pass" type="password"></td>
		</tr>
		<tr>
			<td><input type="submit" value="Login"></td>
		</tr>
	</table>
	
	</form>
	</center>
</body>
</html>