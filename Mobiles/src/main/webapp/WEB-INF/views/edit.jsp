<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="/addMobile" method="post">
		<div class="modal-header">
			<h4 class="modal-title">Edit Mobile</h4>
			<button type="button" class="close" data-dismiss="modal"
				aria-hidden="true">Dismiss</button>
		</div>
		<div class="modal-body">
			<input type="hidden" name="stuId" id="stuId" />
			<div class="form-group">
				<label>Name</label> <input type="text" class="form-control"
					name="name" value="${mob.name}" required>
			</div>
			<div class="form-group">
				<label>company</label> <input type="text" class="form-control"
					name="company" value="${mob.company}" required>
			</div>
			<div class="form-group">
				<label>Camera</label> <input type="text" class="form-control"
					name="campix" value="${mob.campix}" required>
			</div>
			<div class="form-group">
				<label>Ram</label> <input type="text" class="form-control"
					name="ram" value="${mob.ram}" required>
			</div>
			<div class="form-group">
				<label>Rom</label> <input type="text" class="form-control"
					name="rom" value="${mob.rom}" required>
			</div>
			<div class="form-group">
				<label>Processor</label> <input type="text" class="form-control"
					name="processor" value="${mob.processor}" required>
			</div>
			<div class="form-group">
				<label>Display</label> <input type="text" class="form-control"
					name="display" value="${mob.display}" required>
			</div>
		</div>
		<div class="modal-footer">
			<input type="button" class="btn btn-default" data-dismiss="modal"
				value="Cancel"> <input type="submit" class="btn btn-success"
				value="Update">
		</div>
	</form>
</body>
</html>