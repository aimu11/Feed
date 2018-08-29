import GMaps from 'gmaps/gmaps.js';

const mapElement = document.getElementById('map');
if (mapElement) { // don't try to build a map if there's no div#map to inject in
  const markersData = JSON.parse(mapElement.dataset.markers)

  var map = new google.maps.Map(document.getElementById('map'), {
      center: markersData[0],
      zoom: 14,
  });


  var infowindow = new google.maps.InfoWindow({
    content: "This is Restaurant 1"
  });


  const bounds = new google.maps.LatLngBounds();
  const markers = markersData.map(function(data) {
    const marker = new google.maps.Marker({
      position: data,
      map: map,
      icon: data.icon
    });

    const loc = new google.maps.LatLng(marker.position.lat(), marker.position.lng());
    bounds.extend(loc);


    marker.addListener('click', function() {
      infowindow.setContent(`

        <h4>${data.restaurant.name}</h4>
        <p>${data.restaurant.address}</p>




        `)
      infowindow.open(map, marker);
    });


    return marker
  });

  map.fitBounds(bounds);
  map.panToBounds(bounds);

}






