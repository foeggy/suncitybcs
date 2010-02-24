var latlng;
var myOptions;
var map;
var geocoder = new google.maps.Geocoder();

geocoder.geocode( { 'address': "913-D Harvey Road, College Station, TX 77840"}, function(results, status) {
    if (status == google.maps.GeocoderStatus.OK) {
      map.setCenter(results[0].geometry.location);
      var marker = new google.maps.Marker({
          map: map, 
          position: results[0].geometry.location
      });
    }})

latlng = new google.maps.LatLng(-34.397, 150.644);
myOptions = {
	zoom: 16,
	center: latlng,
	mapTypeId: google.maps.MapTypeId.ROADMAP
};
map = new google.maps.Map(document.getElementById("map_canvas_0"), myOptions);

latlng = new google.maps.LatLng(-34.397, 150.644);
myOptions = {
	zoom: 16,
	center: latlng,
	mapTypeId: google.maps.MapTypeId.ROADMAP
};
map = new google.maps.Map(document.getElementById("map_canvas_1"), myOptions);

latlng = new google.maps.LatLng(-34.397, 150.644);
myOptions = {
	zoom: 16,
	center: latlng,
	mapTypeId: google.maps.MapTypeId.ROADMAP
};
map = new google.maps.Map(document.getElementById("map_canvas_2"), myOptions);