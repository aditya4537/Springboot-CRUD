<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cars Data</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<style>
.center {
	margin: auto;
	width: 50%;
	border: 3px solid orange;
	padding: 10px;
}
.back {
	background-image:
		url('https://th.bing.com/th/id/R.adffb142a07755f9fc4e1400e3491ae3?rik=4FvKTC0WecxYSQ&riu=http%3a%2f%2fthewowstyle.com%2fwp-content%2fuploads%2f2015%2f01%2fhouse-in-green-field.jpg&ehk=caxhcnvNf0ozQccM6fSqVhUAlP4WL4Qc9Sw8VvZrBjk%3d&risl=&pid=ImgRaw&r=0');
	height: 100%;
	background-size: cover;
	background-repeat: no-repeat;
}
</style>

</head>
<body class="bg-dark back">
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>

	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">Cars</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							Dropdown </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="#">Action</a></li>
							<li><a class="dropdown-item" href="#">Another action</a></li>
							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item" href="#">Something else
									here</a></li>
						</ul></li>
					<li class="nav-item"><a class="nav-link disabled" href="#"
						tabindex="-1" aria-disabled="true">Disabled</a></li>
				</ul>
				<form class="d-flex">
					<input class="form-control me-2" type="search" placeholder="Search"
						aria-label="Search">
					<button class="btn btn-outline-success" type="submit">Search</button>
				</form>
			</div>
		</div>
	</nav>
	
	<div class="center p-3 mb-2 text-white hover-overlay" style="
      background: linear-gradient(
        45deg,
        hsla(168, 85%, 52%, 0.5),
        hsla(263, 88%, 45%, 0.5) 100%
      );
    " style="margin-top: 50px; box-shadow:10px 10px 8px #888888;">


		<h1 class="display-4 fst-italic fw-bolder center">Mobile
			Data</h1>
			<a href="/add"><button type="button" class="btn btn-primary">Add Mobile</button></a>
		<table class="table table-success table-bordered table-striped table-hover" style="margin-top: 30px;">
			<tr class="table-danger fw-bolder">
				<th>IMEI</th>
				<th>Name</th>
				<th>Company</th>
				<th>Camera MegaPixel</th>
				<th>Ram</th>
				<th>Rom</th>
				<th>Processor</th>
				<th>Display</th>
				<th>Delete Mobile</th>
				<th>Update</th>
			</tr>

			<c:forEach var="mob" items="${mobile}">
				<tr class="table-success">
					<td>${mob.imei}</td>
					<td>${mob.name}</td>
					<td>${mob.company}</td>
					<td>${mob.campix}</td>
					<td>${mob.ram} GB</td>
					<td>${mob.rom} GB</td>
					<td>${mob.processor}</td>
					<td>${mob.display}</td>
					<td><a href="/delete?imei=${mob.imei}"><button type="button" class="btn btn-danger">Delete</button></a></td>
					<td><a href="/edit?imei=${mob.imei}"><button type="button" class="btn btn-primary">Edit</button></a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>