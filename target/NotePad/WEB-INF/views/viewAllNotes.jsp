<%@page import="com.dao.noteDaoImpl"%>
<%@page import="com.dao.noteDao"%>
<%@page import="java.util.Iterator"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.List"%>
<%@page import="com.model.Data"%>

<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous">

<!-- My External Files  -->
<link href="<c:url value="/res/css/style.css"/> ">
<script src="<c:url value="/res/script/script.js"/> "></script>


<nav class="navbar navbar-expand-lg navbar-light "
	style="background-color: #dddddd">
	<div class="container-fluid">
		<a class="navbar-brand mx-auto" href="#"> <img
			src="<c:url value="/res/images/icon.png"/>" height="50" width="50"
			alt="" /></a>

		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<!-- Navbar On The Mobile -->

		<div class="collapse navbar-collapse" id="navbarNavDropdown">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="#">Home</a></li>
				<li class="nav-item"><a class="nav-link" href="\NotePad">Log
						Out</a></li>
			</ul>
		</div>
	</div>
</nav>

</head>


<body background="<c:url value="/res/images/bg1.svg"/>">
	<br>
	<br>

	<div class="container">

		<%
			noteDao dao = new noteDaoImpl();
		List<Data> data = dao.getNotes();
		%>

		<table class="table table-bordered w-30">
			<tr>
				<th class="bg-danger text-center"><font color="#fff">Title</th>
				<th class="bg-danger text-center"><font color="#fff">Notes</th>
				<th class="bg-danger text-center"><font color="#fff">Edit</th>
				<th class="bg-danger text-center"><font color="#fff">Delete</th>

			</tr>
			<%
				for (Data d : data) {
			%>
			<tr>
				<td class="text-center"><%=d.getTitle()%></td>
				<td class="text-center"><%=d.getNote()%></td>
				<td class="text-center"><a href='editNote?id=<%=d.getId()%>'>Edit</a></td>
				<td class="text-center"><a href='deleteNote?id=<%=d.getId()%>'>Delete</a></td>


			</tr>

			<%
				}
			%>
		</table>


	</div>

	<script type="text/javascript">
		function goBack() {
			window.history.back();
		}
	</script>

	<p align="center">
		<button onclick="goBack()" class="btn btn-danger" align="center">Back</button>
	</p>
	
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
		crossorigin="anonymous"></script>

</body>
</html>
