<!DOCTYPE html>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
 <%@ page import="java.util.*,com.util.DBUtility,java.sql.*" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Data</title>
<style>

/* ul {
  background: #7EC8C9;
  padding: 20px;
}

ul li {
  background: #7EC8C9;
  margin: 5px;
}

a, a:link {
  color: blue;
  text-decoration: underline;
}
a:visited {
    color: black;
}
a:hover {
  text-decoration: none;
}
a:active {
   background: yellow;
}
 */
 .w3-button {width:150px;}
 </style>

</head>
<body bgcolor="gray">
	<%!String name; %>
	<%
		response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
		if(session.getAttribute("userid") == null){
			response.sendRedirect("login.html");
		}
	    ResultSet rn = DBUtility.getResultSet("SELECT NAME FROM USERDATA WHERE USERID="+session.getAttribute("userid"));
		while(rn.next()){
	    	name = "Welcome :"+rn.getString(1);
		}	
	%>
	<marquee behavior="scroll" direction="left"><%=name %></marquee>
	
	<p align="right">
	<form align= "right" action ="Logout">
		<input type="submit" class="w3-button w3-blue" value="Logout">
	</form>
	</p>
	
		<a href="home.jsp">Back</a>
	
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
</body>
</html>