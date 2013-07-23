mapOptions = {
  zoom: 8,
  center: new google.maps.LatLng(40.714353, -74.005973),
  mapTypeId: google.maps.MapTypeId.ROADMAP
}

$scope.map = new google.maps.Map document.getElementById('map'), mapOptions

google.maps.event.addListener $scope.map, 'click', (event) ->
