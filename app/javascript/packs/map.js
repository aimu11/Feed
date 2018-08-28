import GMaps from 'gmaps/gmaps.js';

const mapElement = document.getElementById('map');
if (mapElement) { // don't try to build a map if there's no div#map to inject in
  const map = new GMaps({ el: '#map', lat: 0, lng: 0 });
  const markers = JSON.parse(mapElement.dataset.markers);
  console.log(markers)
  // ######## TRY ADDING THIS TO GET THE infoWindow:
  // (map.markers[index].infoWindow).open(map.map,map.markers[index]);

  // you need to put it into an iteration to get the index of the markers
  // in order to show the infowindow for every marker.
  // try this and then call me.
  map.addMarkers(markers);
  if (markers.length === 0) {
    map.setZoom(2);
  } else if (markers.length === 1) {
    map.setCenter(markers[0].lat, markers[0].lng);
    map.setZoom(14);
  } else {
    map.fitLatLngBounds(markers);
  }
  var marker = new google.maps.Marker({
  position: {lat: 0, lng: 0},
  map: map,
  title: 'PEPSized Coffee',
  icon: {
    url: "images/markers/svg/Coffee_3.svg",
    scaledSize: new google.maps.Size(64, 64)
  }
});
}


