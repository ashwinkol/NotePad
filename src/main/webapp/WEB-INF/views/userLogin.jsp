<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous">

<nav class="navbar navbar-expand-lg navbar-light "
	style="background-color: #dddddd">

	<div class="container-fluid">
		<a class="navbar-brand mx-auto" href="#"> <img src="<c:url value="/res/images/icon.png"/>" height="50" width="50"  alt=""/></a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavDropdown">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="/NotePad/">Home</a></li>
				
			</ul>
		</div>
	</div>
</nav>
<body background="<c:url value="/res/images/bg1.svg" />">
<br><br> <br><br><br><br>
<div align="center">
<form action="loginCheck" method="post"> 
<input type="text" name="id" required="required" placeholder="User Id" style="border:2px solid #DC3545" />
<br><br>
<input type="password" name="password" required="required" placeholder="User Password" style="border:2px solid #DC3545" />
<br><br>
<input type="submit" class="btn btn-warning" />

</form>
</div>
			    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
		
</body>
</html>