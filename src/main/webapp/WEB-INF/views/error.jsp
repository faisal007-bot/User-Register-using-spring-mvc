<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<title>Error</title>
</head>
<body>
	<div class="container mt-5">
		<div class="alert alert-danger text-center" role="alert">
			<h1>
				An error has been occured<br />please! try again.
			</h1>
			<h1>
				<form:errors path="user.*" />
			</h1>
		</div>
		<div class="text-center">
			<button type="button" class="btn btn-dark">
				<a href="/Register/" style="text-decoration: none;" class="link-light">
					Register Here!</a>
			</button>
		</div>
	</div>
</body>
</html>