import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class AbsensiPage extends StatefulWidget {
  const AbsensiPage({super.key});

  @override
  State<AbsensiPage> createState() => _AbsensiPageState();
}

class _AbsensiPageState extends State<AbsensiPage> {
  late GoogleMapController mapController;

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      onMapCreated: (controller) {
        debugPrint('Map created');
        mapController = controller;
      },
      initialCameraPosition: const CameraPosition(
        target: LatLng(-0.914562, 100.466188),
        zoom: 15,
      ),
    );
  }
}
