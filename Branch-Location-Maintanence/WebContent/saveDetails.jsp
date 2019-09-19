<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<title>Save Branch Details</title>
<script src="https://ajax.aspnetcdn.com/ajax/knockout/knockout-3.1.0.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
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
					<input class="form-control" type="number" name="branchID"
						placeholder="Enter Branch ID" required>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2">Branch Name:</label>
				<div class="col-sm-10">
					<input class="form-control" type="text" name="branchName"
						placeholder="Enter Branch Name" required>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2">Branch Address:</label>
				<div class="col-sm-10">
					<select class="form-control" id="countySel" name="countySel" size="1">
						<option value="" selected="selected">-- Select Country --</option>
					</select> <select class="form-control" id="stateSel" name="stateSel" size="1">
						<option value="" selected="selected">-- Select State--</option>
					</select> <select class="form-control" id="citySel" name="citySel" size="1">
						<option value="" selected="selected">-- Select City--</option>
					</select> <select class="form-control" id="zipSel" name="zipSel" size="1">
						<option value="" selected="selected">-- Select Zip--</option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2">Branch Phone Number:</label>
				<div class="col-sm-10">
					<input class="form-control" type="tel" name="branchPhNum"
						pattern="[789][0-9]{9}" required> <small>Format:
						Valid 10 digit number starting with 7, 8 or 9</small>
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
	<script>
		var countryStateInfo = {
			"USA" : {
				"California" : {
					"Los Angeles" : [ "90001", "90002", "90003", "90004" ],
					"San Diego" : [ "92093", "92101" ]
				},
				"Texas" : {
					"Dallas" : [ "75201", "75202" ],
					"Austin" : [ "73301", "73344" ]
				}
			},
			"India" : {
				"Maharashtra" : {
					"Mumbai" : [ "781005" ],
					"Pune" : [ "411021", "781030" ]
				},
				"Madhya Pradesh" : {
					"Indore" : [ "390011", "390020" ],
					"Bhopal" : [ "395006", "395002" ]
				}
			}
		}

		window.onload = function() {

			//Get html elements
			var countySel = document.getElementById("countySel");
			var stateSel = document.getElementById("stateSel");
			var citySel = document.getElementById("citySel");
			var zipSel = document.getElementById("zipSel");

			//Load countries
			for ( var country in countryStateInfo) {
				countySel.options[countySel.options.length] = new Option(
						country, country);
			}

			//County Changed
			countySel.onchange = function() {

				stateSel.length = 1; // remove all options bar first
				citySel.length = 1; // remove all options bar first
				zipSel.length = 1; // remove all options bar first

				if (this.selectedIndex < 1)
					return; // done

				for ( var state in countryStateInfo[this.value]) {
					stateSel.options[stateSel.options.length] = new Option(
							state, state);
				}
			}

			//State Changed
			stateSel.onchange = function() {

				citySel.length = 1; // remove all options bar first
				zipSel.length = 1; // remove all options bar first

				if (this.selectedIndex < 1)
					return; // done

				for ( var city in countryStateInfo[countySel.value][this.value]) {
					citySel.options[citySel.options.length] = new Option(city,
							city);
				}
			}

			//City Changed
			citySel.onchange = function() {
				zipSel.length = 1; // remove all options bar first

				if (this.selectedIndex < 1)
					return; // done

				var zips = countryStateInfo[countySel.value][stateSel.value][this.value];
				for (var i = 0; i < zips.length; i++) {
					zipSel.options[zipSel.options.length] = new Option(zips[i],
							zips[i]);
				}
			}
		}
	</script>
</body>
</html>