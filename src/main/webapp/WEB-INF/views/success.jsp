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
<title>Success</title>
</head>
<body>
	<div class="container mt-5">
		<div class="m-5">
			<h1 class="text-center" style="text-transform: uppercase;">User
				Saved Successfully</h1>
		</div>
		<div>
			<h1>
				<ul class="list-group text-center">
					<li class="list-group-item">ID = ${user.id}</li>
					<li class="list-group-item">Name = ${user.name}</li>
					<li class="list-group-item">Phone Number = ${user.number}</li>
					<li class="list-group-item">Email Address = ${user.email}</li>
					<li class="list-group-item">Password = ${user.password}</li>
				</ul>
			</h1>
		</div>
		<div class="text-center m-4 p-4">
			<button type="button" class="btn btn-primary">
				<a style="text-decoration: none;" href="/Register/"
					class="link-light">Register Here!</a>
			</button>
			<button type="button" class="btn btn-primary">
				<a style="text-decoration: none;" href="allusers"
					class="link-light">View All Users</a>
			</button>
		</div>
	</div>
</body>
</html>