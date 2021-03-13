
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Details</title>
</head>
<body>
<table>
    <tr>
        <td><%=request.getAttribute("firstName")%></td>
    </tr>
    <tr>
        <td><%=request.getAttribute("middleName")%></td>
    </tr>
    <tr>
        <td><%=request.getAttribute("lastName")%></td>
    </tr>
    <tr>
        <td><%=request.getAttribute("houseNo")%></td>
    </tr>
    <tr>
        <td><%=request.getAttribute("cityName")%></td>
    </tr>
    <tr>
        <td><%=request.getAttribute("pinNo")%></td>
    </tr>
</table>
</body>
</html>