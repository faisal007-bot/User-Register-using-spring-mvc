<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<title>Register</title>
</head>
<body>
	<div class="container mt-5">
		<form action="processform" method="post">
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">Enter
					ID</label> <input type="text" name="id" class="form-control"
					id="exampleInputEmail1" aria-describedby="emailHelp">
			</div>
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">Enter
					Name</label> <input type="text" name="name" class="form-control"
					id="exampleInputEmail1" aria-describedby="emailHelp">
			</div>
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">Enter
					Email</label> <input type="email" name="email" class="form-control"
					id="exampleInputEmail1" aria-describedby="emailHelp">
			</div>
			<div class="mb-3">
				<label for="exampleInputPassword1" class="form-label">Enter Password</label>
				<input type="password" name="password" class="form-control"
					id="exampleInputPassword1">
			</div>
			<div class="mb-3">
				<label for="exampleInputEmail1" class="form-label">Enter
					Phone Number</label> <input type="number" name="number" class="form-control"
					id="exampleInputEmail1" aria-describedby="emailHelp">
			</div>
			<div class="text-center">
				<button type="submit" class="btn btn-success">Register</button>
			</div>
		</form>
	</div>
</body>
</html>
