<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,com.pojo.User, java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>show page</title>
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
}</style>


</head>
<body bgcolor="yellow">

<div>
		<ul>
			<li><a href="home.html">Home</a></li>
			<li><a href="contact.html">Contact</a></li>
			<li><a href="about.html">About Us</a></li>
			<li><a href="details">Show Data</a></li>
		</ul>
	
	</div>




<table>
  
   
   <%
        	ArrayList<com.pojo.User> list=(ArrayList<com.pojo.User>)request.getAttribute("list");
           		
   			for(User user: list){
   
           		
        %>
   	  <tr>
        <td><%= user.getUserId() %></td><td><%= user.getEmail()%></td>
    </tr>
   <% }%>
  
</table>
</body>
</html>