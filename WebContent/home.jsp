<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*,com.util.DBUtility,java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<link rel="stylesheet" href="style.css">
<style>
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
	
	<div class="w3-content w3-section" style="max-width: 1400px;">
  
	
   <img class="mySlides w3-animate-fading" src="puppy1.jpg" style="width:100%">
   <img class="mySlides w3-animate-fading" src="puppy3.jpg" style="width:100%">
   <img class="mySlides w3-animate-fading" src="puppy4.jpg" style="width:100%">
   <img class="mySlides w3-animate-fading" src="puppy5.jpg" style="width:100%">
   <img class="mySlides w3-animate-fading" src="puppy6.jpg" style="width:100%">
   <img class="mySlides w3-animate-fading" src="puppy7.jpg" style="width:100%">
</div>

<script>
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 9000);    
}
</script>
	
	
</body>
</html>