<!DOCTYPE html>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
 <%@ page import="java.util.*,com.util.DBUtility,java.sql.*" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About</title>
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
		<p align="right">
	<form align= "right" action ="Logout">
		<input type="submit" class="w3-button w3-blue" value="Logout">
	</form>
	</p>
	</div>
	
	<iframe width="560" height="315" src="https://www.youtube.com/embed/9R38B_JyBy8" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
	<iframe width="560" height="315" src="https://www.youtube.com/embed/PDFiSNdZi-w" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
	<iframe width="560" height="315" src="https://www.youtube.com/embed/LrUo7bVu__k" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
	
	
	
	
	<!-- <h3>On 11 March, WHO declared the Novel Coronavirus Disease (COVID-19) outbreak as a pandemic and reiterated the call for countries to take immediate actions and scale up response to treat, detect and reduce transmission to save people’s lives.

As of 15 March, 2020 a total of 107 COVID-19 cases have been reported in India. They include 90 Indian nationals, 17 foreign nationals, 10 recovered and 2 deaths. So far, cases of COVID-19 have been reported from 13 States/UTs: Andhra Pradesh (1 case), Delhi (7 cases), Haryana (14 cases), Jammu & Kashmir (2 cases), Karnataka (6 cases), Kerala (22 cases), Ladakh (3 cases), Maharashtra (31 cases), Punjab (1 case), Rajasthan (4 cases), Telangana (3 cases),Tamil Nadu (1 case) and Uttar Pradesh (12 cases). Hospital isolation of all confirmed cases, tracing and home quarantine of the contacts are ongoing.

The Prime Minister's Office, Ministry of Health & Family Welfare (MoHFW) and Cabinet Secretary are closely monitoring the situation of COVID-19, invoking powers under The Epidemic Diseases Act, 1897 to enhance preparedness and containment of the virus. State Disaster Response Fund (SDRF), constituted under Section 48 (1) (a) of the Disaster Management Act, 2005, is now available with State Governments for responding to COVID-19, which has been declared a notified disaster.  Various measures have been taken by the Central Ministries along with States/UTs in terms of strengthened community surveillance, quarantine facilities, isolation wards, adequate PPEs, trained manpower, rapid response teams for management of COVID-19. 

All types of passenger movement for foreigners (except Nepalese and Bhutanese nationals) through all Immigration Land Check Posts at Indo-Bangladesh, Indo-Nepal, Indo-Bhutan and Indo-Myanmar border will be suspended from March 15, 2020. Starting from 13 March 2020, all existing visas, except diplomatic, official, UN/International Organizations, employment, project visas, stand suspended until 15 April 2020. All incoming travelers, including Indian nationals, arriving from or having visited China, Italy, Iran, Republic of Korea, France, Spain and Germany after 15th February 2020 shall be quarantined for a minimum period of 14 days, in effect from 1200 GMT on 13th March 2020 at the port of departure. All international passengers entering India are required to furnish duly filled self-declaration form and undergo Universal Health Screening at the designated health counters at all points of entry.</h3>
	 -->
</body>
</html>