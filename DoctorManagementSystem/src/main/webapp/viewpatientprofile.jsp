<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
   body{
    margin: 0;
    padding: 0;
    font-family: 'playfair display', sans-serif;
}
div{
    height: 1095px;
    background: linear-gradient(#349df3 , #163a4a);
}
.lform{
    width: 600px;
    padding: 40px;
    position: absolute;
    text-align: center;
    border-radius: 6px;
    top:50%;
    left:50%;
    background: linear-gradient(rgb(93, 140, 250), rgb(84, 58, 95));
    box-shadow: 0px 0px 1px 1px rgb(182, 164, 255);
    transform: translate(-50%, -50%);
    transition: 1s;

}
.lform:hover{
    box-shadow: 0px 0px 1px 1px #7de9aa;
}
.lform h1{
    color: #8da1e9;
    display: inline;
    text-transform: uppercase;

}
.lform #lgn{
    color: #7de9aa;
}
.lform #sgnp a{
    text-decoration: none;
    color: #8da1e9;
}
.lform #sgnp a:hover{
    color: #ffffff;
}
.lform #h-r{
    width: 170px;
    height: 3px;
    background: #7de9aa;
    border: none;
    border-radius: 8px;
}

.lform input[type="text"], .lform input[type="password"]{
    border: 0;
    outline: none;
    background: none;
    display: block;
    margin: 18px auto;
    text-align: center;
    padding: 14px;
    border: 2px solid #3498db;
    border-radius: 24px;
    width: 260px;
    font-size: 18px;
    color: rgb(68, 231, 163);
    transition: 0.30s;
}
.lform input[type="email"]{
     border: 0;
    outline: none;
    background: none;
    display: block;
    margin: 18px auto;
    text-align: center;
    padding: 14px;
    border: 2px solid #3498db;
    border-radius: 24px;
    width: 260px;
    font-size: 18px;
    color: rgb(68, 231, 163);
    transition: 0.30s;
}
.lform input[type="text"]:focus, .lform input[type="password"]:focus{
    width: 300px;
    border-color: #7de9aa;
}
.lform input[type="email"]:focus{
  width: 300px;
  border-color: #7de9aa;
}
.lform input[type="submit"]{
    border: 0;
    background: none;
    border: 2px solid #3498db;
    border-radius: 24px;
    padding: 10px 40px;
    font-size: 20px;
    color: white;
    cursor: pointer;
    transition: 0.30s;
}
.lform input[type="submit"]:hover{
    background: #8da1e9;
}
.lform #checkbx{
    color: #67dcc7;
    font-size: 20px;
   
}
.lform #checkb{
    border: 0px;
    width: 4%;
    height: 1.5em;
}
.lform #checkb2{
    border: 0px;
    width: 4%;
    height: 1.5em;
}
.lform .ptxt{
font-size: 20px;

}
.lform p a{
    text-decoration: none;
    color: #5d9d78;
}

.lform input[type="submit"]:active{
    transform: scale(1.1);
}
.lform ::placeholder{
    color: rgb(116, 199, 240);
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
try{
	String name=(String) session.getAttribute("patientname");
	String query="select patient_id,patient_name,patient_email from patientsignup where patient_name=?";
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/admin","root","root");
	PreparedStatement pstmt=con.prepareStatement(query);
	pstmt.setString(1, name);
	ResultSet rs=pstmt.executeQuery();
	if(rs.next()==false){
		out.println("Empty");
	}
	else{%>
	<form class="lform"  method="post">

        <h1 id="lgn">Patient Profile</h1>

<%do{ %>
			
	<hr id="h-r">
      	
        <h2>PATIENT ID:<%=rs.getInt(1) %> </h2><br>
        <h2>PATIENT NAME:<%=rs.getString(2) %> </h2><br>
        <h2>PATIENT MAIL:<%=rs.getString(3) %> </h2><br>
 		
       
			
			
		<%}
	while(rs.next());
		}%>
	
</form>
   
    <div>
    <a href="patienthome.jsp"> <button>GoBack</button></a>
    </div>
<%	
	
}
catch(Exception e){
	System.out.println(e);
}

%>

</body>
</html>