<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<title>Home</title>
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
					<button type="submit" formaction="Logout" class="btn btn-primary">Logout</button>
				</div>
			</div>
		</form>
	</div>
	<div class="container">
		<form method="post" class="form-horizontal">
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<h2>Welcome ${name}</h2>
					<br>
					<button type="submit" formaction="saveDetails.jsp"
						class="btn btn-primary">Save Branch Details</button>
					<button type="submit" formaction="searchDetails.jsp"
						class="btn btn-primary">Search Branch</button>
				</div>
			</div>
		</form>
	</div>
</body>