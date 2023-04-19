<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%

String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "admin";
String userid = "root";
String password = "root";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<style>
body {
  background-image: url('https://image.slidesdocs.com/responsive-images/background/blue-health-board-hospital-cartoon-powerpoint-background_4a31fe9c67__960_540.jpg');
}
</style>
<body>

<h1>Doctors</h1>
<table border="5" align="left">
<tr>
<td>Doctor Id</td>
<td>Doctor Name</td>
<td>Role</td>
<td>Qualification</td>
<td>Email</td>
<td>Action</td>
<td>Action</td>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select doctor_id,doctor_name,role,qualification,email from adddoctor";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>

<tr>
<td><%=resultSet.getInt(1) %></td>
<td><%=resultSet.getString(2) %></td>
<td><%=resultSet.getString(3) %></td>
<td><%=resultSet.getString(4) %></td>
<td><%=resultSet.getString(5) %></td>
<td><button><a href="updatedoctor.jsp">Update</a></button></td>
<td><button><a href="deletedoctor.jsp">Delete</a></button></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table> 
<%
response.setHeader("cache-control", "no-cache,no-store,must-revalidate");
 
if(session.getAttribute("adminuser")==null){
	response.sendRedirect("mainhome.jsp");
}

%>
<br><br>
<br><br>
<br><br>
<a href="adminhome.jsp"><button>Go Back</button></a>
</body>
</html>