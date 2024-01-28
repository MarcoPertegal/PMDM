import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapMakerItem extends StatefulWidget {
  const MapMakerItem({Key? key}) : super(key: key);

  @override
  _MapMakerItemState createState() => _MapMakerItemState();
}

class _MapMakerItemState extends State<MapMakerItem> {
  late GoogleMapController mapController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Maps Flutter'),
      ),
      body: GoogleMap(
        onMapCreated: (GoogleMapController controller) {
          mapController = controller;
        },
        initialCameraPosition: CameraPosition(
          target: LatLng(37.7749, -122.4194),
          zoom: 12.0,
        ),
        markers: {
          Marker(
            markerId: MarkerId('salesianos_marker'),
            position: LatLng(37.7749, -122.4194),
            infoWindow: InfoWindow(title: 'Salesianos Triana'),
          ),
        },
      ),
    );
  }
}
