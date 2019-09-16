<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<title>Save Branch Details</title>
</head>
<body>
	<%
	    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		if (session.getAttribute("name") == null) {
			response.sendRedirect("login.jsp");
		}
	%>
	<div align="right">
		<form method="post">
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" formaction="home.jsp" class="btn btn-primary">Home</button>
					<button type="submit" formaction="Logout" class="btn btn-primary">Logout</button>
				</div>
			</div>
		</form>
	</div>
	<div class="container">
		<h2>Enter Branch Details</h2>
		<form method="post" action="SaveDetails" class="form-horizontal">
			<div class="form-group">
				<label class="control-label col-sm-2">Branch ID:</label>
				<div class="col-sm-10">
					<input type="text" name="branchID" required>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2">Branch Name:</label>
				<div class="col-sm-10">
					<input type="text" name="branchName" required>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2">Branch Address:</label>
				<div class="col-sm-10">
					<input type="text" name="branchAddr" required>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2">Branch Phone Number:</label>
				<div class="col-sm-10">
					<input type="text" name="branchPhNum" required>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-primary">Save</button>
					<button type="reset" class="btn btn-primary">Reset</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>