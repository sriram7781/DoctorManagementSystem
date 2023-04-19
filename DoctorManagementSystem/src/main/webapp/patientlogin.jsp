<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Login Page</title>
  <style>
  body {
  background-color: transparent;
  background-image: url("https://cdn.pixabay.com/photo/2016/06/02/02/33/triangles-1430105_960_720.png");
   background-size: cover;
}

.login-page {
  width: 360px;
  padding: 8% 0 0;
  margin: auto;
  background-color: transparent;
  border-radius: 10px;
  box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.2);
}

.avatar {
  width: 100%;
  text-align: center;
  margin-bottom: 20px;
}

.avatar img {
  width: 60px;
  height: 60px;
  border-radius: 50%;
}

.form {
  position: relative;
  z-index: 1;
  max-width: 360px;
  margin: 0 auto 100px;
  padding: 45px;
  text-align: center;
  background-color: rgba(255, 255, 255, 0.7);
  border-radius: 20px;
}

.form input[type="text"],
.form input[type="password"] {
  font-family: 'Roboto', sans-serif;
  outline: none;
  width: 100%;
  border: 0;
  margin: 0 0 15px;
  padding: 15px;
  box-sizing: border-box;
  font-size: 14px;
  border-radius: 20px;
  background-color: rgba(255, 255, 255, 0.7);
}

.form button {
  font-family: 'Roboto', sans-serif;
  text-transform: uppercase;
  outline: none;
  background-color: #2196F3;
  width: 100%;
  border: 0;
  padding: 15px;
  color: #FFFFFF;
  font-size: 14px;
  -webkit-transition: all 0.3s ease;
  transition: all 0.3s ease;
  cursor: pointer;
  border-radius: 20px;
}

.form button:hover,
.form button:active,
.form button:focus {
  background-color: #1976D2;
}

.form h2 {
  color: #333333;
  font-size: 28px;
  margin: 0 0 30px;
}

.form p.message {
  color: #666666;
  font-size: 14px;
  margin-top: 15px;
}

.form p.message a {
  color: #2196F3;
  text-decoration: none;
}

.form p.message a:hover {
  text-decoration: underline;
}
  
  </style>
  </head>
  <body>
  <%

  response.setHeader("cache-control", "no-cache,no-store,must-revalidate");
  %>
    <div class="login-page">
      
      <div class="form">
        <h2>Login</h2>
        <form action="patientlogin">
          <input type="text" placeholder="Username" name="pname" required>
          <input type="password" placeholder="Password" name="password" required>
          <button>Log in</button>
        </form>
        <p class="message">Not registered? <a href="patientsignup.jsp">Create an account</a></p>
        
      </div>
    </div>
  </body>
</html>