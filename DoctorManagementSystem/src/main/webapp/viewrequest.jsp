<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Request</title>

</head>
<body>

<%
response.setHeader("cache-control", "no-cache,no-store,must-revalidate");
 
if(session.getAttribute("patientname")==null && session.getAttribute("doctorname")==null){
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
	<th>Action</th>
	<th>Action</th>
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
		<td><a href="accept.jsp"><button id="btn">Accept</button></a></td>
		<td><a href="reject.jsp"> <button id="bt">Reject</button></a></td>
		
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

<script>
const btn = document.getElementById('btn');

btn.addEventListener('click', function handleClick() {
btn.textContent = 'Accepted';
});

const bt = document.getElementById('bt');
bt.addEventListener('click', function handleClick() {
bt.textContent = 'Rejected';
});
</script>
<br><br>
<a href="doctorhome.jsp"><button>Go Back</button></a>
</body>
</html>