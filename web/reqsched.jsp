<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
header{
    background-color:green;
    color:white;
    text-align:center;
    padding:5px; 

}

.footer {
    background-color:green;
    color:white;
    clear:both;
    text-align:center;
    padding:5px; 
   position:fixed;
   bottom:0;
   left:0;
   right:0;
   min-height:30px;
}
</style>

<head>
  
  <link rel="stylesheet" href="stylesheet.css">
</head>

<body>

	<header>
	<h1>TERM IN A POCKET</h1>
	</header>
	
	<div class="addReq">                    <!-- kailangan siguro ng addServlet na mag add sa isang course sa courseList ng isang user-->
    <form action="addreq" method="post">
        <input type="text" name="req" placeholder="Requirement"><br>
        <input type ="submit" value= "Add req"> <br>
     </form>
    </div>

    <div class="content">    
    <c:forEach var="requirement" items="${requirementList }" varStatus="counter">  <!-- dapat kukunin sa courseList yung specific course na may grade na ito -->
	   ${counter.index }
	   ${requirement.course } <br>
	   ${requirement.requirements } <br>
	   <br>
	   <input type="hidden" value="${counter.id }" id=""/>

	   <button id="${counter.id} }" class="item${counter.index }" class="edit"/>
	   <button id="${counter.id} }" class="item${counter.index }" class="delete"/>
	</c:forEach> 
    </div>
    
    <div class="editSystem">                    <!-- kailangan siguro ng addServlet na mag add sa isang course sa courseList ng isang user-->
    <form action="editsystem" method="post">
        <input type="text" name="days" placeholder="Day(s)"><br>
        <input type="text" name="time" placeholder="Time"><br>
        <input type="text" name="room" placeholder="Room"><br>
        <input type ="submit" value= "Edit Grading System"> <br>
     </form>
    </div>
    
    <br>
    <div class="Schedule">      <!-- Hindi pa ako sure kung paano kukunin by get parameter dito  -->
        <a > Schedule for this Course</a>
		<a > Day: <%= request.getParameter("day") %>! </a> <br>       
		<a > Time: <%= request.getParameter("swhw") %>!</a> <br>
		<a > Room: <%= request.getParameter("others") %>!</a> <br>
	</div>
	
	<br>
	<a href="home.jsp"> Back </a>


</body>
</html>