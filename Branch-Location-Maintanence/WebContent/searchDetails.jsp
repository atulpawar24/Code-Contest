<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<title>Search Branch Details</title>
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
		<h2>Enter Branch Details to Search</h2>
		<form method="post" action="SearchDetails" class="form-horizontal">
			<div class="form-group">
				<label class="control-label col-sm-2">Branch ID:</label>
				<div class="col-sm-10">
					<input class="form-control" type="number" name="branchID" required>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2">Branch Name:</label>
				<div class="col-sm-10">
					<input class="form-control" type="text" name="branchName" required>
				</div>
			</div>
	<!-- 		<div class="form-group">
				<label class="control-label col-sm-2">Search By Id</label>
				<div class="col-sm-10">
					<input type="radio" name="search" value="byId" checked>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2">Search By Name</label>
				<div class="col-sm-10">
					<input type="radio" name="search" value="">
				</div>
			</div> -->
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-primary">Search</button>
					<button type="reset" class="btn btn-primary">Reset</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>