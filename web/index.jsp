<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<style>
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


</style>
<head>


  <title>CodePen - Log-in</title>


</head>


<body>

  <header>
<h1>TERM IN A POCKET</h1>
</header>

  <div class="login-card">
    <center>
      <img src = "DLSU.jpg" height="300" width="300" class = "DLSUlogo"></img>
          <br>
          <br>
          <br>
    <h1> Term Regulator </h1><br>
  <form action="login" method="POST">  <!-- will be forwarded to Login Servlet to validate the idnum an dpassword -->
  
    <input type="text" name="idnum" placeholder="ID number">
    <input type="password" name="password" placeholder="Password">
    <input type ="submit" value= "Login">

  </form>


  <div class="login-help">
    <p> No Account? </p>
    <a href="register.html">Register</a>
    <a> &nbsp </a> 
  </div>
  
  <c:forEach var="user" items="${userList }" varStatus="counter">
	   ${counter.index }
	   ${user.firstname } <br>
	   ${user.lastname } <br>
	   ${user.email } <br>
	   ${user.idnum } <br>
	   <br>
	</c:forEach>


  </center>
</div>
</body>

</html>