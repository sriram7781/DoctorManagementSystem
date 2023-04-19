<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>

*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

.container {
    width: 100%;
    min-height: 100vh;
    background-repeat: no-repeat;
    background-size: cover;
    background-position: center;
    background:  linear-gradient(178.6deg, rgb(20, 36, 50) 11.8%, rgb(124, 143, 161) 83.8%);
}

.content{
    width: 100%;
    min-height: 100vh;
    position: absolute;
    top:0;
    left:0;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
}

.content h1{
    font-size: 45px;
    color: #fff;
    font-weight: 400;
    margin-bottom: 20px;
}

.content p{
    font-size: 16px;
    color: #fff;
}

/* === removing default button style ===*/
.button {
  margin: 0;
  height: auto;
  background: transparent;
  padding: 0;
  border: none;
}

/* button styling */
.button {
  --border-right: 6px;
  --text-stroke-color: rgba(255,255,255,0.6);
  --animation-color:rgb(20, 36, 50);
  --fs-size: 2em;
  letter-spacing: 3px;
  text-decoration: none;
  font-size: var(--fs-size);
  font-family: "Arial";
  position: relative;
  text-transform: uppercase;
  color: transparent;
  -webkit-text-stroke: 1px var(--text-stroke-color);
}
/* this is the text, when you hover on button */
.hover-text {
  position: absolute;
  box-sizing: border-box;
  content: attr(data-text);
  color: var(--animation-color);
  width: 0%;
  inset: 0;
  border-right: var(--border-right) solid var(--animation-color);
  overflow: hidden;
  transition: 0.5s;
  -webkit-text-stroke: 1px var(--animation-color);
}
/* hover */
.button:hover .hover-text {
  width: 100%;
  filter: drop-shadow(0 0 23px var(--animation-color))
}



/*  */

.square {
position: relative;
margin: 0 10px;
width: 400px; height: 400px;
display: flex;
justify-content: center;
align-items: center;
}

.square .one {
position: absolute;
width: 100%;
height: 100%;
border: 2px solid black;
border-radius: 32% 58% 69% 43% / 48% 32% 59% 55%;
transition: 0.5s;
animation: animate 6s linear infinite;

}

.twitch:hover .one {
border: none;
background:rgb(20, 36, 50);;
}

.square .two {
position: absolute;
top: 0;
left: 0;
width: 100%;
height: 100%;
border: 2px solid black;
border-radius: 38% 62% 63% 37% / 41% 44% 56% 59%;
transition: 0.5s;
animation: animate 6s linear infinite;
}

.twitch:hover .two {
border: none;
background: rgb(20, 36, 50);;

}




.square .three {
position: absolute;
top: 0;
left: 0;
width: 100%;
height: 100%;
border: 2px solid black;
border-radius: 31% 45% 74% 35% / 38% 56% 51% 37%;
transition: 0.5s;
animation: animate2 10s linear infinite;
}
.twitch:hover .three {
border: none;
background:rgb(20, 36, 50);;
}

.circle {
position: relative;
padding: 40px 60px;
text-align: center;
transition: 0.5s;
z-index: 1000;
}

.square:hover{
color: white;
}

.content:hover {

color: #ffffff;
}

@keyframes animate {
    0% {
        transform: rotate(0deg);
    }
    100% {
        transform: rotate(360deg);
    }
}

@keyframes animate2 {
    0% {
        transform: rotate(360deg);
    }
    100% {
        transform: rotate(0deg);
    }

}

.DrugRadar{
    font-size: 50px;
}
</style>
</head>
<body>
<%
response.setHeader("cache-control", "no-cache,no-store,must-revalidate");
 
if(session.getAttribute("patientname")==null && session.getAttribute("doctorname")==null){
	response.sendRedirect("mainhome.jsp");
}

%>
    <div class="container">
        <div class="content">
            <div class="square twitch" style="margin-bottom: 50px;">
                <span class="one" ></span>
                <span class="two"></span>
                <span class="three"></span>
                <div class="circle">
                    <h2 class="DrugRadar"> 
               
                    </h2>
                    <h1>Appointment Rejected</h1>
                </div>
            </div>

          
            
        </div>
        
    </div>

</body>
</html>