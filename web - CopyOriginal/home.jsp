<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>


<style type="text/css" media="screen">
header {
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

body { font-family:Arial, Helvetica, sans-serif; }
div.header { display:block; position:relative; height:100px; }
#menu-container { display:block; position:relative; width:1200px; margin:0px auto 0px; font-size:11px; }
#drop_down_menu { display:block; position:absolute; clear:both; margin:0px; padding:0px; text-align:left; list-style-type:none; text-align:center; width:700px; float:none; left:0px; top:0px; }
#drop_down_menu li { font-size:12px; font-weight:bold; float:left; color:#11a2db; padding:5px; cursor:pointer; background:#333333; width:150px; }
#drop_down_menu li ul { margin:0px; padding:0px; list-style-type:none; padding-top:10px; }
#drop_down_menu li ul li { display:block; float:none; clear:both;  }
#drop_down_menu li ul li a { color:#FFFFFF; font-weight:normal; text-decoration:none; display:block; }
#drop_down_menu li ul li a:hover{ text-decoration:underline; color:#CCCCCC; }
</style>
</head>

<body>

  <header>
<h1>TERM IN A POCKET</h1>
</header>
	<div class="UserInfo"> 
		<a > Welcome: <%= session.getAttribute("currentUser") %>! </a> <br>       
		<a > ID: <%= request.getParameter("idnum") %>!</a> <br>
		<a href="index.jsp"> Log-out </a>
	</div>

    <br>
    <div class="addCourse">                    <!-- kailangan siguro ng addCourseServlet dito, similar sa addUser-->
    <form action="addcourse" method="post">
        <a name="idnum"> ID: <%= request.getParameter("idnum") %>!</a> <br>    <!-- para mapasok din idnum -->
        <input type="text" name="course" placeholder="Add Course"> <br>
        <input type="text" name="description" placeholder="Add Description"><br>
        <input type ="submit" value= "Add Course"> <br>
     </form>
    </div>
    
    <div class="content">    
    <c:forEach var="course" items="${courseList }" varStatus="counter">  <!-- ifo-forward ng addCourseServlet sa home.jsp or bagong servlet?-->
	   ${counter.index }
	   ${course.course } <br>
	   ${course.description } <br>
	   <br>
	   <input type="hidden" value="${counter.id }" id=""/>
	   
	   <a href="grades.jsp">Grades and Grading System</a>
	   <a href="reqsched.jsp">Requirements and Schedule</a>
	   
	   <button id="${counter.id} }" class="item${counter.index }" class="edit"/>
	   <button id="${counter.id} }" class="item${counter.index }" class="delete"/>
	</c:forEach> 
    </div>

    <div class="Sticky">
       <textarea rows="1" cols="80">
       	Sticky Notes
       </textarea>
    </div>

</body>


</html>