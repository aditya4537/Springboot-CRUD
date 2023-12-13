<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
<body>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
		
		
		<section class="vh-100 bg-image" style="background-image: url('https://mdbcdn.b-cdn.net/img/Photos/new-templates/search-box/img4.webp');">
	<div class="mask d-flex align-items-center h-100 gradient-custom-3">
		<div class="container h-100">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="col-12 col-md-9 col-lg-7 col-xl-6">
					<div class="card" style="border-radius: 15px;">
						<div class="card-body p-5">
							<h2 class="text-uppercase text-center mb-5">Add Mobile</h2>

							<form action="/addMobile" method="post">

								<div class="form-outline mb-4">
									<label class="form-label" for="form3Example1cg">
										Name</label> <input type="text" id="form3Example1cg" name="name"
										class="form-control form-control-lg" required />
								</div>

								<div class="form-outline mb-4">
									<label class="form-label" for="form3Example3cg">Company
										</label> <input type="text" id="form3Example3cg" name="company"
										class="form-control form-control-lg" required />
								</div>

								<div class="form-outline mb-4">
									<label class="form-label" for="form3Example4cg">Camera
										</label> <input type="text" id="form3Example4cg"
										name="campix" class="form-control form-control-lg"
										required />
								</div>

								<div class="form-outline mb-4">
									<label class="form-label" for="form3Example4cdg">Ram
										</label> <input type="text" id="form3Example4cdg"
										name="ram" class="form-control form-control-lg"
										required />
								</div>

								<div class="form-outline mb-4">
									<label class="form-label" for="form3Example4cdg">Rom
										</label> <input type="text" id="form3Example4cdg"
										name="rom" class="form-control form-control-lg"
										required />
								</div>

								<div class="form-outline mb-4">
									<label class="form-label" for="form3Example4cdg">Processor
										 </label> <input type="text" id="form3Example4cdg"
										name="processor" class="form-control form-control-lg" required />
								</div>
								
								<div class="form-outline mb-4">
									<label class="form-label" for="form3Example4cdg">Display
										 </label> <input type="text" id="form3Example4cdg"
										name="display" class="form-control form-control-lg" required />
								</div>



								<div class="d-flex justify-content-center">
									<input type="submit"
										class="btn btn-success btn-block btn-lg gradient-custom-4 text-body"
										value="Add Mobile">
								</div>

							</form>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
</body>
</html>