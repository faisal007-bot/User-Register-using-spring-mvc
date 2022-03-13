<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script src="https://kit.fontawesome.com/56d9a95cbd.js"></script>
<title>All Users</title>
</head>
<body>
	<div class="container mt-5">
		<table class="table table-hover">
			<tr style="text-transform: uppercase;" class="table-primary">
				<th scope="col">ID</th>
				<th scope="col">Name</th>
				<th scope="col">Email</th>
				<th scope="col">Password</th>
				<th scope="col">Phone Number</th>
				<th scope="col">Actions</th>
			</tr>
			<c:forEach items="${users}" var="u">
				<tr>
					<td>${u.id}</td>
					<td>${u.name}</td>
					<td>${u.email}</td>
					<td>${u.password}</td>
					<td>${u.number}</td>
					<td><a style="text-decoration: none;" href="update/${u.id}"
						class="link-warning">Update</a> &nbsp;&nbsp;&nbsp; 
						<a style="text-decoration: none;" href="delete/${u.id}"
						class="link-danger">Delete</a>
					</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>