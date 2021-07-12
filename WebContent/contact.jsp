<!DOCTYPE html>
 <%@ page import="java.util.*,com.util.DBUtility,java.sql.*" %>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact</title>
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
 ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
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

.uldiff {
	background-color: grey;
}
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
	<table>
		<tr>
		<td><img src="contactus.jpg" alt="sorry" style="width:500px;height:580px;"></td>
		<td>
			<ul class="uldiff">
				
				<ul class="uldiff">Pritish Kumar Padhan</ul>
				<ul class="uldiff">RamMurty Nagar</ul>
				<ul class="uldiff">Mob: 8989898908</ul>
				
			</ul>
			
				
		</td>
		</tr>	
	</table>
</body>
</html>