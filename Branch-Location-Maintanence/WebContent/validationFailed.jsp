<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<title>Login Attempt Fail</title>
</head>
<body>
	<div class="container">
		<h2>Wrong Username/Password</h2>
		<p>Click below to login again</p>
		<form class="form-horizontal">
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" formaction="login.jsp"
						class="btn btn-primary">Login</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>