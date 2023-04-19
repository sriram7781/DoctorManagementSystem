<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
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

<%
String role=request.getParameter("role");
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/admin","root","root");
	String query="select doctor_name from adddoctor where role=?";
	PreparedStatement pstmt=con.prepareStatement(query);
	pstmt.setString(1,role);
	ResultSet rs=pstmt.executeQuery();
	if(rs.next()==false){
		out.println("Empty");
	}
	else{%>
	<table border="5" align="left">
	<tr>
	<th>Doctor_Name</th>
	<th>Book Appointment</th>
	</tr>
	<% 
	do{%>
	<tr><td><%= rs.getString(1) %></td>
	<td><button><a href="appointementbook.jsp">Book</a></button></td></tr>
	<% 	}while(rs.next());%>
	</table><%
		
	}
}
catch(Exception e){
	System.out.println(e);
}


%>
<br><br>
<br><br>
<a href="patienthome.jsp"><button>GoBack</button></a>

</body>
</html>