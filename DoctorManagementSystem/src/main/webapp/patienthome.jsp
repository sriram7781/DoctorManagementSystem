<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
body{
background:url(https://static.vecteezy.com/system/resources/previews/004/493/181/original/hospital-building-for-healthcare-background-illustration-with-ambulance-car-doctor-patient-nurses-and-medical-clinic-exterior-free-vector.jpg);
background-size:cover;
background-position:center center;
 background-repeat:no-repeat;
 height: 800px;

}
.nav {
    margin: 0;
    padding: 20px 0;
  }
    
  
   .nav li {
    display:inline;
     font-family: 'Raleway', sans-serif;
    font-weight: 600;
    font-size: 12px;
    text-transform:uppercase;
    margin-left:10px;
    margin-right:10px;
  }
    
</style>
<body>
<%
response.setHeader("cache-control", "no-cache,no-store,must-revalidate");
 
if(session.getAttribute("patientname")==null){
	response.sendRedirect("mainhome.jsp");
}

%>

 <div class="header">
      <div class="container">
        <ul class="nav">
        <li><a href="appointementbook.jsp">Book Appointment</a></li>
		  <li ><a href="search.jsp">Search Doctors</a></li>
          <li ><a href="viewpatientprofile.jsp">ViewProfile</a></li>
    		<li ><a href="viewrequest.jsp">Appointment Status</a></li>
          </ul>
 
      </div>
    </div>
<form action="patientlogout">
<button>LogOut</button>

</form>

</body>
</html>