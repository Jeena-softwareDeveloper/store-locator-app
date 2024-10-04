
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../models/store_model.dart';

class MapScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Store store = ModalRoute.of(context)!.settings.arguments as Store;

    return Scaffold(
      appBar: AppBar(
        title: Text('Store Location'),
      ),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(store.latitude, store.longitude),
          zoom: 14,
        ),
        markers: {
          Marker(
            markerId: MarkerId(store.name),
            position: LatLng(store.latitude, store.longitude),
          ),
        },
      ),
    );
  }
}
