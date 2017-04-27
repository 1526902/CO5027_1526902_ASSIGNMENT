function initMap() {
    var map1 = {lat: 4.885470, lng: 114.931614 };
    var map = new google.maps.Map(document.getElementById('map1'), {
        zoom: 20,
        center: map1
    });
    var marker = new google.maps.Marker({
        position: map1,
        map: map
    });
}