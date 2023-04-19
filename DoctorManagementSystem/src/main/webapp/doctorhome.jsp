<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="website1" content="This is the first practice html+css website">
    <link rel="stylesheet" href="style.css">
    <title>Doctor Home Page</title>
    
    <style>
    *{
    padding: 0;
    margin: 0;
    font-family: sans-serif;
    
}

.banner {
    
    width: 100%;
    height: 100vh;
    background-image:url(https://img.freepik.com/free-photo/frame-medical-equipment-desk_23-2148519742.jpg?w=2000);
    background-size: cover;
    background-position: center;
}
.navebar{
    width: 85%;
    margin: auto;
    padding: 35px 0;
    display: flex;
    align-items: center;
    justify-content: space-between;
}

.logo {
/*   cursor: pointer; */
/*   background-color: #FFEA11; */
  margin-left: 5px;
}

.navebar ul li {
    list-style: none;
    display: inline-block;
    margin: 0 20px; 
   /*padding: 0 20px; */
    position: relative; 

}

.navebar ul li a {
    text-decoration: none;
    color:Blue;
    text-transform: capitalize;
}

.navebar ul li::after{
    content: '';
    height: 2px;
    width: 0; /*100% */
    background:red;
    position: absolute;
    left: 0;
    bottom: -8px;
    transition: 0.5s;
}

.navebar ul li:hover::after {
    width: 100%;
}

.content {
    width: 100%;
    position: absolute;
    top: 50%;
    transform: translateY(-50%);
    text-align: center;
    color: black;
}

.content h1 {
    text-transform: uppercase;
    font-size: 40px;
    margin-top: 80px;
}
.content p {
    margin: 20px auto;
    font-weight: 100;
    line-height: 25px;
}

button {
    
    width: 150px;
    height: 40px;
    padding: 15px 0;
    text-align: center;
    margin: 20px 10px;
    border-radius: 25px;
    font-weight: bold;
    border: 2px solid #009688;
    background: transparent;
    color:  black;
    cursor: pointer;
    position:relative;
    overflow: hidden;
    
}

span {
    text-align: center;
    background: black;
    height: 100%;
    width: 10;
    border-radius: 25px;
    position:absolute;
    left: 0;
    bottom: 0;
    z-index: -1;
    transition: 0.5s;

}
button:hover span {
    width: 100%;
}
button:hover {
    border: none;
}
hi:{
right:90px;
}
    </style>
</head>
<body>
<%
response.setHeader("cache-control", "no-cache,no-store,must-revalidate");
 
if(session.getAttribute("doctorname")==null){
	response.sendRedirect("mainhome.jsp");
}

%>
    <div class="banner">
        <div class="navebar">
            <ul>
                <li><a href="viewrequest.jsp">ViewRequest</a></li>
                <li><a href="viewdoctorprofile.jsp">ViewProfile</a></li>
               
            </ul>
        </div>
        <div style = "display: flex; justify-content:flex-end">
        <form action="doctorlogout">
    	<button>LogOut!</button>
    	</form>
</div>
               
            </div>
>
    
</body>
</html>