import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils/app_styles.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

const LatLng currentLocation = LatLng(19.168229, 72.960975);

class MapsOverview extends StatefulWidget {
  const MapsOverview({super.key});

  @override
  State<MapsOverview> createState() => _MapsOverviewState();
}

class _MapsOverviewState extends State<MapsOverview> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
            target: currentLocation,
        ),
      ),
    );
  }
}
