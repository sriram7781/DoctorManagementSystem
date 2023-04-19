<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body {
  background-image: url('https://image.slidesdocs.com/responsive-images/background/blue-health-board-hospital-cartoon-powerpoint-background_4a31fe9c67__960_540.jpg');
}
</style>
</head>
<body>
<%
response.setHeader("cache-control", "no-cache,no-store,must-revalidate");
 
if(session.getAttribute("patientname")==null){
	response.sendRedirect("mainhome.jsp");
}

%>


<table border="5">
<tr>
<th>Patient_Name</th>
<th>Age</th>
<th>Phone_Number</th>
<th>Doctor_Name</th>
<th>Date</th>
</tr>
<tr>
<td>${uname}</td>
<td>${age}</td>
<td>${phone}</td>
<td>${dname}</td>
<td>${date}</td>


</tr>

</table>
<a href="patienthome.jsp">GoBack</a>
</body>
</html>