<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor</title>
<style>

*{
	padding: 0;
	margin: 0;
}

.container{
	width: 100%;
	height: 100vh;
	display: flex;
	justify-content: center;
	align-items: center;
	background-image: url(https://c4.wallpaperflare.com/wallpaper/531/951/621/digital-digital-art-artwork-illustration-minimalism-hd-wallpaper-preview.jpg);
	background-size: cover;

}

.login_box{
	background-color:transparent;
    padding:50px 20px;
	width: 400px;
	border-radius: 20px;
	border: 1px solid #fff;
	/* filter: blur(8px); */
	backdrop-filter: blur(4px);
}


h1{
	text-align:center;
	margin-bottom: 20px;
	font-size:40px;
	color:#FFF;
}

.input_box{
	width: 90%;
	margin: auto;
	height: 40px;
	position: relative;
	margin-bottom: 20px;
}

.input_box input{
	width: 100%;
    height:40px;
	box-sizing: border-box;
	outline: none;
	border: none;
    padding: 0px 20px;
	background-color:transparent;
	border-bottom: 1px solid #fff;
	color: #fff;
	font-size: 18px;
}

.input_box label{
	position: absolute;
	top: 50%;
	left: 10px;
	transform:translateY(-50%);
	font-size:18px;
	font-weight:500;
	color: #FFF;
	transition: .3s;
}

.icon{
	position: absolute;
	top: 50%;
	right: 10px;
	transform: translateY(-50%);
	color: #fff;
}

.rem{
	display: flex;
	justify-content: center;
	align-items: center;
	color:#fff;
	font-size: 14px;
}

.rem input{
	margin-right: 5px;
}

.rem a{
	text-decoration: none;
	margin-left:5px;
	color:#fff;
	font-weight: bold;
}

.login{
	display: flex;
	justify-content: center;
}

.login button{
	width: 200px;
	height:40px;
	margin-top:20px;
	border-radius: 20px;
	font-size:18px;
	font-weight:bold;
	background-color: #fff;
	border: none;
	outline:none;
	transition: ..3s;
}

.reg{
	display: flex;
	justify-content: center;
	margin-top:20px;
	font-size: 14px;
	color: #ffff;
}

.reg a{
	text-decoration: none;
	margin-left: 5px;
	color: #fff;
	font-weight: bold;
}


.input_box input:focus ~ label,
.input_box input:valid ~ label{
	top: 0;
 }


 .login button:hover{
	cursor: pointer;
	background-color:transparent;
	color:#fff;
	border: 1px solid #fff;
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
<div class="container">
	<div class="login_box">
		<h1>Enter Role</h1>
		<div class="input_box">
		<form action="searchdoctors.jsp" method="post">
		
		<label for="role"></label>
			<input type="text"  name="role" required><br>
			<div class="login">
			<button>Submit </button>
		</div>
			</form>
		</div>
		
		
		
		
		<div>
			
		</div>
	</div>
 </div>
 

	






	<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</body>
</html>