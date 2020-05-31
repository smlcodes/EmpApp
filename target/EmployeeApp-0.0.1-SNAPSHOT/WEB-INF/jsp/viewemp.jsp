<!DOCTYPE html>
<html lang="en">
<head>
<title>Employee Application</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
</head>
<body>


	<div class="jumbotron text-center">

		<h1>Employees List</h1>
		<table border="2" width="70%" cellpadding="2">
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Salary</th>
				<th>Designation</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
			<c:forEach var="emp" items="${list}">
				<tr>
					<td>${emp.id}</td>
					<td>${emp.name}</td>
					<td>${emp.salary}</td>
					<td>${emp.designation}</td>
					<td><a href="editemp/${emp.id}">Edit</a></td>
					<td><a href="deleteemp/${emp.id}">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
		<br /> <a href="empform">Add New Employee</a>
	</div>
</body>
</html>