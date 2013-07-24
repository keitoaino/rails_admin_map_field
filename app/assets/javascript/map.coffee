address = document.getElementById window.address
lat = document.getElementById window.lat
lng = document.getElementById window.lng

geocoder = new google.maps.Geocoder()
marker = null

mapOptions = {
  zoom: 8,
  mapTypeId: google.maps.MapTypeId.ROADMAP
}

window.onload = ->
  map_element = document.getElementById 'map'
  map = new google.maps.Map map_element, mapOptions

  google.maps.event.addListener map, 'click', (event) ->
    updateLocation event.latLng

  updateLocation = (location, center) ->
    if marker
      marker.setPosition location
    else
      marker = new google.maps.Marker
        position: location,
        map: map

    lat.value = location.lat()
    lng.value = location.lng()

    if center
      map.setCenter location

  setInterval ->
    google.maps.event.trigger map, 'resize'
    , 100

  address.addEventListener 'keyup', ->
    geocoder.geocode {address: this.value}, (results, status) ->
      if status == google.maps.GeocoderStatus.OK
        updateLocation results[0].geometry.location, true


  updateLocation new google.maps.LatLng(lat.value, lng.value), true
