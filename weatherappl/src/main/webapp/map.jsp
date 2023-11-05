<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
        google.charts.load("current", {
            "packages": ["map"],
            "mapsApiKey": "AIzaSyA8F1Gc84hxQW6mr2MqQkjc2MEvFPyIxuo"
        });
        google.charts.setOnLoadCallback(drawChart);

        function drawChart() {
            var data = google.visualization.arrayToDataTable([
                ['Lat', 'Long', 'Name'],
                [16.4419, 80.6226, 'KL University'],
                [16.5062, 80.6480, 'Vijayawada'],
                [15.8281, 78.0373, 'Kurnool'],
            ]);

            var map_div = document.getElementById('map_div');
            var map = new google.visualization.Map(map_div);
            map.draw(data, {
                showTooltip: true,
                showInfoWindow: true
            });
        }
    </script>
</head>

<body>
    <div id="map_div" style="width: 100%; height: 500px;"></div>
</body>

</html>