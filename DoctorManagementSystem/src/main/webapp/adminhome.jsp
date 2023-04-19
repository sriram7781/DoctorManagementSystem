<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
html, body {
    margin: 0;
    padding: 0;
  }
  
  .header {
    background-color:#333333;
  }
  
  .container {
    max-width: 940px;
    margin: 0 auto;
    padding: 0 10px;
  }
  
  .jumbotron {
    background: url(https://www.shutterstock.com/image-photo/laptop-keyboard-stethoscope-on-blue-260nw-1907543080.jpg);
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
    color: #fff;
    font-family: 'Raleway', sans-serif;
    font-weight: 600;
    font-size: 12px;
    text-transform:uppercase;
    margin-left:10px;
    margin-right:10px;
  }
  
  .main {
    position: relative;
    top: 180px;
    text-align: center;
  }
  
  .main h1 {
    color: #333;
    font-family: 'Raleway', sans-serif;
    font-weight: 600;
    font-size: 70px;
    margin-top: 0;
    margin-bottom: 80px;
    text-transform: uppercase;
  }
  
  .btn-main {
    background-color: #333;
    color: #fff;
    font-family: 'Raleway', sans-serif;
    font-weight: 600;
    font-size: 18px;
    letter-spacing: 1.3px;
    padding: 16px 40px;
    text-decoration: none;
    text-transform: uppercase;
  }
  
  .btn-default {
    color:#333;
    border:1px solid #333333;
    font-family: 'Raleway', sans-serif;
    font-weight: 600;
    font-size: 10px;
    letter-spacing: 1.3px;
    padding: 10px 20px;
    text-decoration: none;
    text-transform: uppercase;  
    display: inline-block;
    margin-bottom: 20px; 
    padding-right:50px;
    padding-left:50px;
  }
  
  .supporting {
    padding-top: 80px;
    padding-bottom: 100px;
  }
  
  .supporting .col {
    float: left;
    width: 33%;
    font-family: 'Raleway', sans-serif;
    text-align: center;
  }
  
  .supporting img {
    height: 32px;
  }
  
  .supporting h2 {
    font-weight: 600;
    font-size: 23px;
    text-transform: uppercase;
  }
  
  .supporting p {
    font-weight: 400;
    font-size: 14px;
    line-height: 20px;
    padding: 0 50px;
    margin-bottom: 40px;
  }
  
  .clearfix {
    clear: both;
  }
  
  .footer {
    background-color: #333;
    color: #fff;
    padding: 30px 0;
  }
  
  .footer p {
    font-family: 'Raleway', sans-serif;
    text-transform: uppercase;
    font-size: 11px;
  }
  
  @media (max-width: 500px) {
    .main h1 {
      font-size: 50px;
      padding: 0 40px;
    }
  
    .supporting .col {
      width: 100%;
    }
  }

</style>
</head>
  <body>
  
<%
response.setHeader("cache-control", "no-cache,no-store,must-revalidate");
 
if(session.getAttribute("adminuser")==null){
	response.sendRedirect("mainhome.jsp");
}

%>
    <div class="header">
      <div class="container">
        <ul class="nav">
        <li><a href="adddoctors.jsp">Add Doctors</a></li>
		  <li><a href="viewdoctors.jsp">View Doctors</a></li>
		  <li><a href="viewpatient.jsp">View Patient</a></li>
          <li><a href="appointmentrequest.jsp">View Appointment Request</a></li>
        </ul>
      </div>
    </div>

    <div class="jumbotron">
      <div class="container">  
        <div class="main">
          <h1>Welcome</h1>
          <form action="adminlogout">
          <input type="submit" class="btn-main" value="Logout">
          </form>
          
        </div>
      </div>
    </div>

  </body>

</html>