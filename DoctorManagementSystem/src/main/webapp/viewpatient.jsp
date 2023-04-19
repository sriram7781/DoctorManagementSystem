<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ViewPatient</title>
</head>
<style>
body {
  background-image: url('https://image.slidesdocs.com/responsive-images/background/blue-health-board-hospital-cartoon-powerpoint-background_4a31fe9c67__960_540.jpg');
}</style>
<body>
<h1>Patients</h1>
<%
response.setHeader("cache-control", "no-cache,no-store,must-revalidate");
 
if(session.getAttribute("adminuser")==null){
	response.sendRedirect("mainhome.jsp");
}

%>
<%
try{
String query="select * from patientsignup";
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/admin","root","root");
PreparedStatement pstmt=con.prepareStatement(query);
ResultSet rs=pstmt.executeQuery();
if(rs.next()==false){
	out.println("Empty");
}
else{
	%>
	<table  border="5" align="left">
	<tr>
	<th>Patient_Id</th>
	<th>Patient_Name</th>
	<th>Password</th>
	<th>Retype</th>
	<th>Patient_Email</th>
	<th>Action</th>
	<th>Action</th>
	</tr>
	<%do{%>
	<tr><td><%=rs.getInt(1) %></td>
	<td><%=rs.getString(2) %></td>
	<td><%=rs.getString(3) %></td>
	<td><%=rs.getString(4) %></td>
	<td><%=rs.getString(5) %></td>
	<td><button><a href="updatepatient.jsp">Update</a></button></td>
	<td><button><a href="deletepatient.jsp">Delete</a></button></td>
	</tr>
	<% 	}while(rs.next());
	}%>
	</table>
	<% 

}
catch(Exception e){
	System.out.println(e);
}%>
<br><br>
<br><br>
<br><br>

<a href="adminhome.jsp"><button>Go Back</button></a>
</body>
</html>