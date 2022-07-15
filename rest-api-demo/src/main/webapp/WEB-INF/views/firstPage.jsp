<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page isELIgnored="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css">
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<body>
	<div class="wrapper">
		<div class="container">
		<div id="addSuccess" class=" mt-4 col-sm-12" style="display: none;">
			<div class="alert alert-success">
				<strong><em class="fa fa-thumbs-up"></em> </strong>
				<span>Data Add Successfully</span>
			</div>
		</div>
		
		<div id="deleteSuccess" class=" mt-4 col-sm-12" style="display: none;">
			<div class="alert alert-success">
				<strong><em class="fa fa-thumbs-up"></em> </strong>
				<span>Data Deleted Successfully</span>
			</div>
		</div>
		
		<div id="updateSuccess" class=" mt-4 col-sm-12" style="display: none;">
			<div class="alert alert-success">
				<strong><em class="fa fa-thumbs-up"></em> </strong>
				<span>Data Updated Successfully</span>
			</div>
		</div>
		
		<div id="failure" class="col-sm-12" style="display: none;">
			<div class="alert alert-danger">
				<strong><em class="fa fa-thumbs-down"></em> </strong>
				<span>Failed !!</span>
			</div>
		</div>
		
		<div id="error" class="col-sm-12" style="display: none;">
			<div class="alert alert-danger">
				<strong><em class="fa fa-thumbs-down"></em> </strong>
				<span>Something went wrong !!</span>
			</div>
		</div>

			<div class="add-details">
				<h3>Add Employee</h3>
					<div class="form-group row">
						<label for="inputId" class="col-sm-2 col-form-label">ID</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" id="id" placeholder="Id" name="id">
						</div>
					</div>
					<div class="form-group row">
						<label for="inputName" class="col-sm-2 col-form-label">Name</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" id="name" placeholder="Name" name="name">
						</div>
					</div>
					<div class="form-group row">
						<label for="inputAddress" class="col-sm-2 col-form-label">Address</label>
						<div class="col-sm-4">
							<input type="text" class="form-control" id="address" placeholder="Address" name="address">
						</div>
					</div>
					<div class="form-group row">
						<div class="col-sm-4">
							<button class="btn btn-primary mr-3" id="addData">Add Data</button>
						</div>
					</div>
			</div>

			<div class="col-md-12">
				<h1 class="mb-4">Employee List</h1>
				<table class="table " >
					<thead>
						<tr>
							<th>ID</th>
							<th>Name</th>
							<th>Address</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody id="user-table" >
					</tbody>
				</table>
			</div>
			<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">Edit Details</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
						<div class="form-group row">
						<label for="inputId" class="col-sm-2 col-form-label">ID</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" id="emp_id" placeholder="Id" name="id">
						</div>
					</div>
					<div class="form-group row">
						<label for="inputName" class="col-sm-2 col-form-label">Name</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" id="emp_name" placeholder="Name" name="name">
						</div>
					</div>
					<div class="form-group row">
						<label for="inputAddress" class="col-sm-2 col-form-label">Address</label>
						<div class="col-sm-8">
							<input type="text" class="form-control" id="emp_address" placeholder="Address" name="address">
						</div>
					</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Close</button>
							<button type="button" class="btn btn-primary" id="updateData">Update
								changes</button>
						</div>
					</div>
				</div>
			</div>

		</div>
		
	</div>
	<script type="text/javascript" src="<c:url value="/static/js/main.js" />"></script>
	
</body>
</html>