//import 'dart:html';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../constants.dart';

class MapScreen extends StatefulWidget {
  @override
  //const MapScreen({Key? key}) : super(key: key);
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  static const _initialCameraPosition = CameraPosition(target: LatLng(31.771959, 35.217018), zoom: 11.5);

  late GoogleMapController _googleMapController;

  //adding markers
  final Set<Marker> _markers = new Set();
  List<LatLng> _cords = <LatLng>[
    LatLng(31.622551, 34.547803),
    LatLng(30.631240, 34.789932),
    LatLng(31.837144980686155, 35.12409812915615),
    LatLng(31.962200532962893, 35.22248015990764),
    LatLng(33.11317771419736, 35.33123925877431),
    LatLng(33.07575537352842, 35.482725144529056),
    LatLng(32.49777348033125, 35.566236596431864),
    LatLng(31.144782489106486, 34.546921609044674),
    LatLng(31.241112104966227, 34.35191428735888),
    LatLng(31.77733852315439, 35.19236838104715)
  ];

  int idLoader = 001;
  void loadMarkers() => {
        _cords.forEach((LatLng pos) {
          _markers.add(Marker(markerId: MarkerId(idLoader.toString()), position: pos, infoWindow: InfoWindow(title: 'The title of the marker', snippet: 'Custom Subtitle'), icon: BitmapDescriptor.defaultMarker));
          idLoader++;
        })
      };

  //release the memory when object isn't rebuilt
  @override
  void dispose() {
    _googleMapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: _initialCameraPosition,
        myLocationButtonEnabled: false,
        zoomControlsEnabled: false,
        onMapCreated: (controller) => {
          _googleMapController = controller,
          loadMarkers()
        },
        markers: _markers,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kTopColor,
        foregroundColor: Colors.black,
        //move camera to initial pos
        onPressed: () => _googleMapController.animateCamera(CameraUpdate.newCameraPosition(_initialCameraPosition)),
        child: const Icon(Icons.center_focus_strong),
      ),
    );
  }
}
