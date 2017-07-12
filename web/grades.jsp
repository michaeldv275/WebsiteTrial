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
	
	<div class="addGrade">                    <!-- kailangan siguro ng addServlet na mag add sa isang course sa courseList ng isang user-->
    <form action="addgrade" method="post">
        <select name="Type">
          <option> - Type - </option>
          <option value="quiz">Quiz</option>
          <option value="sw/hw">SW or HW</option>
          <option value="final">Final</option>
          <option value="others">Others</option>
        </select>
        <input type="text" name="grade" placeholder="Enter percentage of grade"><br>
        <input type ="submit" value= "Add grade"> <br>
     </form>
    </div>

    <div class="content">    
    <c:forEach var="grade" items="${gradeList }" varStatus="counter">  <!-- dapat kukunin sa courseList yung specific course na may grade na ito -->
	   ${counter.index }
	   ${grade.course } <br>
	   ${grade.grade } <br>
	   <br>
	   <input type="hidden" value="${counter.id }" id=""/>

	   <button id="${counter.id} }" class="item${counter.index }" class="edit"/>
	   <button id="${counter.id} }" class="item${counter.index }" class="delete"/>
	</c:forEach> 
    </div>
    
    <br>
    <div class="editSystem">                    <!-- kailangan siguro ng addServlet na mag add sa isang course sa courseList ng isang user-->
    <form action="editsystem" method="post">
        <select name="Type">
          <option> - Type - </option>
          <option value="quiz">Quiz</option>
          <option value="sw/hw">SW or HW</option>
          <option value="final">Final</option>
          <option value="others">Others</option>
        </select>
        <input type="text" name="grade" placeholder="Percentage in Grading System"><br>
        <input type ="submit" value= "Edit Grading System"> <br>
     </form>
    </div>
    
    <br>
    <div class="System Info">      <!-- Hindi pa ako sure kung paano kukunin by get parameter dito  -->
        <a > Grading System for this Course</a>
		<a > Quiz: <%= request.getParameter("quiz") %>! </a> <br>       
		<a > SW/HW: <%= request.getParameter("swhw") %>!</a> <br>
		<a > Others: <%= request.getParameter("others") %>!</a> <br>
		<a > Finals: <%= request.getParameter("finals") %>!</a> <br>
	</div>
	
	<br>
	<a href="home.jsp"> Back </a>

</body>

</html>