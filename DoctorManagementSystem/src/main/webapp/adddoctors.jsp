<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add</title>
<style>
* {box-sizing: border-box}

/* Full-width input fields */
  input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for all buttons */
button {
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

button:hover {
  opacity:1;
}

/* Extra styles for the cancel button */
.cancelbtn {
  padding: 14px 20px;
  background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: left;
  width: 50%;
}

/* Add padding to container elements */
.container {
  padding: 16px;
}

/* Clear floats */
.clearfix::after {
  content: "";
  clear: both;
  display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
  .cancelbtn, .signupbtn {
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
<form action="add" style="border:1px solid #ccc" method="post">
  <div class="container">
    <h1>Add Doctor</h1>
  
    <hr>
    <label for="did"><b>DoctorID</b></label>
    <input type="number" placeholder="Enter DoctorId" name="did" required><br>
    <label for="dname"><b>DoctorName</b></label>
    <input type="text" placeholder="Enter Doctorname" name="dname" required>
    <label for="pass"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="pass" required>
    <label for="retype"><b>Retype Password</b></label>
    <input type="password" placeholder="Retype Password" name="retype" required>
    <label for="role"><b>Enter Role</b></label>
    <input type="text" placeholder="Enter Role" name="role" required>
    <label for="qualification"><b>Enter Qualification</b></label>
    <input type="text" placeholder="Enter Qualification" name="qualification" required>
    <label for="email"><b>Enter Email</b></label>
    <input type="email" placeholder="Enter Email" name="email" required>
    <label>
    
      <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
    </label>


    <div class="clearfix">
      <button type="submit" class="signupbtn">Add Doctor</button>
    </div>
  </div>
</form>



</body>
</html>