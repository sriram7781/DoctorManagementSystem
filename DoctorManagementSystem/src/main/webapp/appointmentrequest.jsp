<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Request</title>
<style>

body {
  background-image: url('https://image.slidesdocs.com/responsive-images/background/blue-health-board-hospital-cartoon-powerpoint-background_4a31fe9c67__960_540.jpg');


}
</style>

</head>
<body>
<h1>AppointmentDetails</h1>
<%
response.setHeader("cache-control", "no-cache,no-store,must-revalidate");
 
if(session.getAttribute("adminuser")==null){
	response.sendRedirect("mainhome.jsp");
}

%>
<%
try{
	String query="select * from appointment";
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/admin","root","root");
	PreparedStatement pstmt=con.prepareStatement(query);
	ResultSet rs=pstmt.executeQuery();
	if(rs.next()==false){
		out.println("Empty");
	}
	else{%>
	<table border="5" align="left">
	<tr>
	<th>Patient_Name</th>
	<th>Age</th>
	<th>Email</th>
	<th>Phone_Number</th>
	<th>Doctor_Name</th>
	<th>Date_Of_Appointment</th>
	<th>Gender</th>
	
	</tr>
	
	<% do{%>
		<tr>
		<td><%=rs.getString(1) %></td>
		<td><%=rs.getInt(2) %></td>
		<td><%=rs.getString(3) %></td>
		<td><%=rs.getLong(4) %></td>
		<td><%=rs.getString(5) %></td>
		<td><%=rs.getDate(6) %></td>
		<td><%=rs.getString(7) %></td>
		
		
		
		</tr>
		
	<%}
	while(rs.next());
	}%>
	</table>
		
	<% 
	
	
}
catch(Exception e){

}
%>


<br><br>
<a href="adminhome.jsp"><button>Go Back</button></a>
</body>
</html>