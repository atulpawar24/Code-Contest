<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<title>Location on Map</title>
<script
    src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
    <script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>

var map;
var lt =${lat};
var lon =${lon};
function initialize() {
  var mapProp = {
    zoom: 8,
    center: new google.maps.LatLng(lt,lon)
  };
  map = new google.maps.Map(document.getElementById('map-canvas'),
      mapProp);
  var MPosition = {lat: lt,lng: lon};
	var marker = new google.maps.Marker({
			position: MPosition,
			map: map,
			title: 'Branch'
			});
}
google.maps.event.addDomListener(window, 'load', initialize); 
</script>
</head>
<body>
    <%
	    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		if (session.getAttribute("name") == null) {
			response.sendRedirect("login.jsp");
		}
		
		String lat=request.getAttribute("lat").toString();
		String lon=request.getAttribute("lon").toString();
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
	   <h2>Branch Location</h2>
	   <div  class="form-group" id="map-canvas" style="height:500px; width:700px"></div>
	</div>
	
</body>
</html>