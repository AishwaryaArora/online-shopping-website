<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://maps.googleapis.com/maps/api/js?callback=myMap"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
	<div class="row">

		<h1>Reach Us :</h1>
		<hr />

<div id="map" style="width:400px;height:400px">My map will go here</div>

<script>
function myMap() {
    var mapOptions = {
        center: new google.maps.LatLng(28.38 , 77.12),
        zoom: 10,
        mapTypeId: google.maps.MapTypeId.ROADMAP
    }
var map = new google.maps.Map(document.getElementById("map"), mapOptions);
}
</script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBACNi5WPnodghJlZrie7gynlDvl7HpKEs&callback=myMap"></script>



	</div>
</div>
</body>
</html>