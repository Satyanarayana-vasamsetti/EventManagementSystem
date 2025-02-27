<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Register</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="styles.css">
<style>
body {
	background-image:
		url('https://images.unsplash.com/photo-1514525253161-7a46d19cd819?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8ZXZlbnQlMjBwbGFubmluZ3xlbnwwfHwwfHx8MA%3D%3D');
	/* Replace with your image URL */
	background-size: cover;
	background-position: center;
	height: 100vh; /* Full height */
	display: flex;
	justify-content: center;
	align-items: center;
	margin: 0;
}

.card {
	background-color: rgba(255, 255, 255, 0.3); /* Semi-transparent white */
	backdrop-filter: blur(10px); /* Blur effect */
	border-radius: 10px; /* Rounded corners */
}


</style>
</head>
<body>
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<div class="card shadow-lg p-4">
					<h2 class="text-center mb-4">Register</h2>
					<form action="RegisterServlet" method="post">
						<div class="mb-3">
							<label class="form-label">Name</label> <input type="text"
								name="name" class="form-control" required>
						</div>
						<div class="mb-3">
							<label class="form-label">Email</label> <input type="email"
								name="email" class="form-control" required>
						</div>
						<div class="mb-3">
							<label class="form-label">Password</label> <input type="password"
								name="password" class="form-control" required>
						</div>
						<button type="submit" class="btn btn-primary w-100">Register</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>