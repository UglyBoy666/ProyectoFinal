function initMap() {
    var map = new google.maps.Map(document.getElementById('map'), {
        center: {lat: 19.431547164916992, lng: -98.95824432373047},
        zoom: 14
    });

    // Array de ubicaciones (latitud, longitud, título y URL del ícono)
    var locations = [
        {lat: 19.432, lng: -98.980, title: 'Tinaco Ana', icon: 'https://cdn-icons-png.flaticon.com/128/2051/2051108.png'},
        {lat: 19.438, lng: -98.957, title: 'Tinaco Juan', icon: 'https://cdn-icons-png.flaticon.com/128/2051/2051108.png'},
        {lat: 19.423, lng: -98.940, title: 'Tinaco Pedro', icon: 'https://cdn-icons-png.flaticon.com/128/2051/2051108.png'},
        {lat: 19.418, lng: -98.970, title: 'Tinaco Tomas', icon: 'https://cdn-icons-png.flaticon.com/128/2051/2051108.png'},
        // Nuevas ubicaciones de tinacos
        {lat: 19.425, lng: -98.955, title: 'Tinaco Maria', icon: 'https://cdn-icons-png.flaticon.com/128/2051/2051108.png'},
        {lat: 19.430, lng: -98.965, title: 'Tinaco Carlos', icon: 'https://cdn-icons-png.flaticon.com/128/2051/2051108.png'},
        {lat: 19.434, lng: -98.975, title: 'Tinaco Laura', icon: 'https://cdn-icons-png.flaticon.com/128/2051/2051108.png'},
        {lat: 19.440, lng: -98.950, title: 'Tinaco Jorge', icon: 'https://cdn-icons-png.flaticon.com/128/2051/2051108.png'},
        {lat: 19.420, lng: -98.960, title: 'Tinaco Sofia', icon: 'https://cdn-icons-png.flaticon.com/128/2051/2051108.png'},
        {lat: 19.415, lng: -98.945, title: 'Tinaco Diego', icon: 'https://cdn-icons-png.flaticon.com/128/2051/2051108.png'}
    ];
    // Itera sobre el array de ubicaciones y crea un marcador para cada una
    for (var i = 0; i < locations.length; i++) {
        var location = locations[i];

        var marker = new google.maps.Marker({
            position: {lat: location.lat, lng: location.lng},
            map: map,
            title: location.title,
            icon: {
                url: location.icon,
                scaledSize: new google.maps.Size(50, 50) // Ajusta el tamaño de la imagen según sea necesario
            }
        });
    }
    // Centra el mapa en la ubicación actual del usuario
    map.setCenter(userLocation);
}
