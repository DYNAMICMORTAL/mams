import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:gap/gap.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:custom_info_window/custom_info_window.dart';
import '../utils/app_styles.dart';

const String google_api_key = 'AIzaSyD7Mxkn50FGLO9ZBeK8bnKQG2p948-4A6U';

class MapsOverview65 extends StatefulWidget {
  const MapsOverview65({Key? key}) : super(key: key);

  @override
  State<MapsOverview65> createState() => _MapsOverviewState();
}

class _MapsOverviewState extends State<MapsOverview65> {
  late GoogleMapController _mapController;
  Map<String, Marker> _markers = {};

  CustomInfoWindowController _customInfoWindowController = CustomInfoWindowController();

  final List<String> _markerNames = [
    'THANE STATION EAST',
    'Mulund BMC GARDEN',
    'MAHARSHI ARVIND CHOWK',
    'MULUND RAILWAY STATION WEST',
    'DHANVANTARI HOSPITAL',
    'MULUND SONAPUR',
    'MUNICIPAL SCHOOL',
    'MULUND CHECKNAKA BUS STATION',
    'MAHARANA PRATAP CHOWK MULUND',
    'WAGLE ESTATE POST OFFICE',
    'MARATHON CHOWK TEEN HAATH NAKA',
    'LOUIS WADI',
    'NITIN COMPANY JUNCTION',
    'CADBURY JUNCTION',
    'MAJIWADA',
    'KAPUR BAWADI',
    'TATWADNYAN VIDYAPITH',
    'MANPADA',
    'BRAHMAND AZAD NAGAR',
    'PATLI PADA',
    'WAGHBIL',
    'MUCHHALA COLLEGE',
    'ANAND NAGAR OR SAINATH NAGAR',
    'KASARVADAWALI NAKA',
  ];

  final List<LatLng> _markerLocations = [
    const LatLng(19.175763, 72.946449),
    const LatLng(19.175843, 72.948737),
    const LatLng(19.175624, 72.952598),
// --------------------
    const LatLng(19.173471, 72.956388),
    const LatLng(19.176150, 72.953423),
    const LatLng(19.178235, 72.953791),
    const LatLng(19.181129, 72.953865),
    const LatLng(19.182949, 72.953571),
    const LatLng(19.184296, 72.953939),
    const LatLng(19.185961, 72.958195),
    const LatLng(19.189187, 72.963316),
    const LatLng(19.196098, 72.962375),
    const LatLng(19.198950, 72.962990),
    const LatLng(19.204042, 72.968038),
    const LatLng(19.214517, 72.977544),
    const LatLng(19.221128, 72.977720),
    const LatLng(19.223580, 72.977402),
    const LatLng(19.235108, 72.975991),
    const LatLng(19.241428, 72.975667),
    const LatLng(19.245829, 72.975690),
    const LatLng(19.253043, 72.972173),
    const LatLng(19.263881, 72.967873),
    const LatLng(19.264575, 72.967602),
    // ------------------
    const LatLng(19.269489, 72.965364),
  ];
  final List<LatLng> _polylineCoordinates = [];

  @override
  void initState() {
    super.initState();
    _addMarkers();
    _getPolylinePoints();
  }

  void _addMarkers() {
    for (int i = 0; i < _markerLocations.length; i++) {
      String markerId = 'Marker$i';
      String markerName = _markerNames[i];
      _markers[markerId] = _createMarker(markerId, _markerLocations[i], markerName);
    }
  }

  void _getPolylinePoints() async {
    PolylinePoints polylinePoints = PolylinePoints();

    for (int i = 0; i < _markerLocations.length - 1; i++) {
      PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
        google_api_key,
        PointLatLng(_markerLocations[i].latitude, _markerLocations[i].longitude),
        PointLatLng(_markerLocations[i + 1].latitude, _markerLocations[i + 1].longitude),
      );

      if (result.points.isNotEmpty) {
        result.points.forEach((PointLatLng point) {
          _polylineCoordinates.add(LatLng(point.latitude, point.longitude));
        });
      }
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: const CameraPosition(
              target: LatLng(19.175763, 72.946449), // Set an initial location
              zoom: 15,
            ),
            polylines: {
              Polyline(
                polylineId: const PolylineId("route"),
                points: _polylineCoordinates,
                color: Color(0xFFFF0BDD5),
                width: 6,
              ),
            },
            onTap: (position) {
              _customInfoWindowController.hideInfoWindow!();
            },
            onMapCreated: (GoogleMapController controller) {
              _mapController = controller;
              _customInfoWindowController.googleMapController = controller;
            },
            onCameraMove: (position) {
              _customInfoWindowController.onCameraMove!();
            },
            markers: _markers.values.toSet(),
          ),
          CustomInfoWindow(controller: _customInfoWindowController, height: 120, width: 250),
        ],
      ),
    );
  }

  Marker _createMarker(String id, LatLng location, String markerName) {
    return Marker(
      markerId: MarkerId(id),
      position: location,
      onTap: () {
        _customInfoWindowController.addInfoWindow!(
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            height: 100,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Center(
              child: SizedBox(
                width: 250, // Adjust this width to your preference
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      markerName,
                      style: Styles.headlineStyle2.copyWith(fontSize: 15),
                      overflow: TextOverflow.ellipsis,
                    ),
                    const Gap(8),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 1.5,vertical: 2.5),
                      decoration: BoxDecoration(
                        color: Color(0xFFFE4E4E6),
                      ),
                      child: Column(
                        children: [
                          Text("New Bus", style: Styles.headlineStyle4.copyWith(color: Colors.black, fontSize: 12),),
                        ],
                      ),
                    ),
                    const Gap(8),
                    Row(
                      children: [
                        Icon(FluentSystemIcons.ic_fluent_wifi_1_filled),
                        const Gap(8),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/scheduledbus');
                          },
                            child: Text("Scheduled Buses", style: Styles.headlineStyle4.copyWith(color: Color(0xFFFB8B8B8), fontSize: 14),),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          location,
        );
      },
    );
  }

}
