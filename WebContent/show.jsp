<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,com.pojo.User, java.io.*,com.util.DBUtility,java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<html>
<head>
<style>
 ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: black;
}

li {
  float: left;
  border-right:1px solid #bbb;
}

li:last-child {
  border-right: none;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color: #111;
}

.active {
  background-color: #4CAF50;
}
table {
  border-collapse: collapse;
  width: 40%;
}

th, td {
  padding: 8px;
  text-align: center;
  border-bottom: 1px solid #ddd;
}

tr:hover {background-color:#f5f5f5;}
.w3-button {width:150px;}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View</title>
</head>
<body bgcolor="gray">
	<%!String name; %>
	<%
		response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
		if(session.getAttribute("userid") == null){
			response.sendRedirect("login.html");
		}
	    ResultSet rn = DBUtility.getResultSet("SELECT NAME FROM USERDATA WHERE USER_ID="+session.getAttribute("userid"));
		while(rn.next()){
	    	name = "Welcome :"+rn.getString(1);
		}	
	%>
	<marquee behavior="scroll" direction="left"><%=name %></marquee>

<div>
		<ul>
			<li><a href="home.jsp">Home</a></li>
			<li><a href="contact.jsp">Contact</a></li>
			<li><a href="about.jsp">About Us</a></li>
			<li><a href="details">Show Data</a></li>
			<li><a href="AddData.jsp">Add Data</a></li>
		</ul>
	
	</div>
	<p align="right">
	<form align= "right" action ="Logout">
		<input type="submit" class="w3-button w3-blue" value="Logout">
	</form>
	</p>
<center>
<table border="2" style="background-color:gray;">
<caption><font size="10">User Information</font></caption>
  <tr>
        <th>User Id</th>
        <th>User Name</th>
        <th>Email</th>
        <th>Mobile</th>
        
        
    </tr>
   
   <%
        	ArrayList<com.pojo.User> list=(ArrayList<com.pojo.User>)request.getAttribute("list");
           		
   			for(User user: list){
   
           		
        %>
   	  <tr>
        <td><%= user.getUserId() %></td><td><%= user.getUserName() %></td><td><%= user.getEmail()%></td><td><%= user.getMobileNo()%></td>
    </tr>
   <% }%>
  
</table>
</center>
</body>
</html>