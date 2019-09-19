<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<title>Search Successful</title>
</head>
<body>
    <%
	    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		if (session.getAttribute("name") == null) {
			response.sendRedirect("login.jsp");
		}
		int BranchId=(int)request.getAttribute("BranchId");
		String BranchName=(String)request.getAttribute("BranchName");
		String BranchCon=(String)request.getAttribute("BranchCon");
		String BranchState=(String)request.getAttribute("BranchState");
		String BranchCity=(String)request.getAttribute("BranchCity");
		int BranchZip=(int)request.getAttribute("BranchZip");
		long BranchNum=(long)request.getAttribute("BranchNum");
		
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
		<h2>Search Successful</h2>
		    <div class="form-group">
				<label class="control-label col-sm-2">Branch ID:</label>
				<label class="col-sm-10"><%out.print(BranchId); %></label>
				<label class="control-label col-sm-2">Branch Name:</label>
				<label class="col-sm-10"><%out.print(BranchName); %></label>
				<label class="control-label col-sm-2">Branch Address:</label>
				<label class="col-sm-10"><%out.print(BranchCity+","+BranchState+","+BranchZip+","+BranchCon); %></label>
				<label class="control-label col-sm-2">Branch Number:</label>
				<label class="col-sm-10"><%out.print(BranchNum); %></label>
		    </div>
		<form class="form-horizontal" action="Map" method="post">
			<div class="form-group">
			   <input type="hidden" name="BranchZip" value="<%out.print(BranchZip); %>">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit"
						class="btn btn-primary">See Location on Map</button>
					<button type="submit" formaction="searchDetails.jsp"
						class="btn btn-primary">Search Different Branch</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>