<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div role="navigation">
		<div class="navbar navbar-inverse">
			<a href="/home" class="navbar-brand">Hushan Hasarel</a>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="/login">Login</a></li>
					<li><a href="/register">New Registration</a></li>
					<li><a href="/show-employees">All Users</a></li>
				</ul>
			</div>
		</div>
	</div>


<c:choose>


<c:when test="${mode=='MODE_HOME'}">
<div class="container" id="homediv">
		<div class="jumbotron text-center">
			<h1>Welcome to My project</h1>
			<h3>Interview Practical</h3>
		</div>
	</div>


</c:when>

<c:when test="${mode=='MODE_REGISTER'}">
<div class="container text-center">
				<h3>New Registration</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="add-employee">
					<input type="hidden" name="id" value="${employee.id }" />
					<div class="form-group">
						<label class="control-label col-md-3">Firstname</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="firstname"
								value="${employee.firstname }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Last Name</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="lastname"
								value="${employee.lastname }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Contact Number</label>
						<div class="col-md-7">
							<input type="tel" pattern="[0-9]{10}" class="form-control" name="contact"
								value="${employee.contact }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Age </label>
						<div class="col-md-3">
							<input type="number" min= "18" max="100" class="form-control" name="age"
								value="${employee.age }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Username</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="username"
								value="${employee.username }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Password</label>
						<div class="col-md-7">
							<input type="password" class="form-control" name="password"
								value="${employee.password }" />
						</div>
					</div>
					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="Register" />
					</div>
				</form>
			</div>


</c:when>


<c:when test="${mode=='ALL_EMPLOYEES'}">
			<div class="container text-center" id="tasksDiv">
			<h3>ALL Users</h3>
			<hr>
			<div class="table-responsive">
			<table class="table table-striped table-bordered">
			<thead>
				<tr>
					<th>ID</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Contact Number</th>
					<th>Age</th>
					<th>Username</th>
					<th>Password</th>
					<th>Update</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="employee" items="${employees}">
				<tr>
					<td>${employee.id}</td>
					<td>${employee.firstname}</td>
					<td>${employee.lastname}</td>
					<td>${employee.contact}</td>
					<td>${employee.age}</td>
					<td>${employee.username}</td>
					<td>${employee.password}</td>
					<td><a href="/edit-employee?id=${employee.id}"><span class="glyphicon glyphicon-pencil"></span></a></td>
					<td><a href="/delete-employee?id=${employee.id}"><span class="glyphicon glyphicon-trash"></span></a></td>
					
				</tr>
				
				</c:forEach>
			</tbody>
			
			</table>
			
			</div>
			
			</div>
			
			</c:when>


<c:when test="${mode=='MODE_UPDATE'}">
<div class="container text-center">
				<h3>New Registration</h3>
				<hr>
				<form class="form-horizontal" method="POST" action="add-employee">
					<input type="hidden" name="id" value="${employee.id }" />
					<div class="form-group">
						<label class="control-label col-md-3">Firstname</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="firstname"
								value="${employee.firstname }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Last Name</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="lastname"
								value="${employee.lastname }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Contact Number</label>
						<div class="col-md-7">
							<input type="tel" pattern="[0-9]{10}" class="form-control" name="contact"
								value="${employee.contact }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Age </label>
						<div class="col-md-3">
							<input type="number" min= "18" max="100" class="form-control" name="age"
								value="${employee.age }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Username</label>
						<div class="col-md-7">
							<input type="text" class="form-control" name="username"
								value="${employee.username }" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3">Password</label>
						<div class="col-md-7">
							<input type="password" class="form-control" name="password"
								value="${employee.password }" />
						</div>
					</div>
					<div class="form-group ">
						<input type="submit" class="btn btn-primary" value="Register" />
					</div>
				</form>
			</div>


</c:when>




</c:choose>




<script src="webjars/jquery/1.9.1/jquery.js"></script>
<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>