// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import '../utils/app_styles.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
//
// const LatLng currentLocation = LatLng(19.175803, 72.947773);
// const LatLng destination = LatLng(19.267771, 72.966368);
//
// class MapsOverview extends StatefulWidget {
//   const MapsOverview({super.key});
//
//   @override
//   State<MapsOverview> createState() => _MapsOverviewState();
// }
//
// class _MapsOverviewState extends State<MapsOverview> {
//   late GoogleMapController _mapController;
//   Map<String, Marker> _markers = {};
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: GoogleMap(
//         initialCameraPosition: const CameraPosition(
//             target: currentLocation,
//           zoom: 14,
//         ),
//         onMapCreated: (controller) {
//           _mapController = controller;
//           addMarker('test', currentLocation);
//           addMarker('test', destination);
//         },
//         markers: _markers.values.toSet(),
//       ),
//     );
//   }
//
//   addMarker(String id, LatLng location) {
//     var marker = Marker(
//       markerId: MarkerId(id),
//       position: location,
//       infoWindow: const InfoWindow(
//         title: 'Campus Veg Treat',
//         snippet: '4 way intersection road',
//       )
//     );
//     _markers[id] = marker;
//     setState(() {});
//   }
// }














import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils/app_styles.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

const LatLng currentLocation = LatLng(19.175763, 72.946449);
const LatLng mulundBMCGarden = LatLng(19.175843, 72.948737);
const LatLng maharshiArvindChowk = LatLng(19.175624, 72.952598);
const LatLng mulundRailwayStation = LatLng(19.173471, 72.956388);
const LatLng dhanvantariHospital = LatLng(19.176150, 72.953423);
const LatLng mulundSonapur = LatLng(19.178235, 72.953791);
const LatLng municipalSchool = LatLng(19.181129, 72.953865);
const LatLng mulundCheckNakaBusStation = LatLng(19.182949, 72.953571);
const LatLng maharanaPratapChowk = LatLng(19.184296, 72.953939);
const LatLng wagleEstate = LatLng(19.185961, 72.958195);
const LatLng marathonChowkTeenHaathNaka = LatLng(19.189187, 72.963316);
const LatLng louisWadi = LatLng(19.196098, 72.962375);
const LatLng nitinCompany = LatLng(19.198950, 72.962990);
const LatLng cadburyJunction = LatLng(19.204042, 72.968038);
const LatLng majiwada = LatLng(19.214517, 72.977544);
const LatLng kapurBawadi = LatLng(19.221128, 72.977720);
const LatLng tatwadnyanVidyapith = LatLng(19.223580, 72.977402);
const LatLng manpada = LatLng(19.235108, 72.975991);
const LatLng brahmandAzadNagar = LatLng(19.241428, 72.975667);
const LatLng patliPada = LatLng(19.245829, 72.975690);
const LatLng waghbil = LatLng(19.253043, 72.972173);
const LatLng muchhalaCollege = LatLng(19.263881, 72.967873);
const LatLng anandNagar = LatLng(19.264575, 72.967602);
const LatLng destination = LatLng(19.269489, 72.965364);

class MapsOverview extends StatefulWidget {
  const MapsOverview({super.key});

  @override
  State<MapsOverview> createState() => _MapsOverviewState();
}

class _MapsOverviewState extends State<MapsOverview> {
  late GoogleMapController _mapController;
  Map<String, Marker> _markers = {};

  @override
  void initState() {
    super.initState();
    _markers['currentLocation'] = createMarker('Current Location', currentLocation);
    _markers['mulundBMCGarden'] = createMarker('Current Location', mulundBMCGarden);
    _markers['maharshiArvindChowk'] = createMarker('Current Location', maharshiArvindChowk);
    _markers['mulundRailwayStation'] = createMarker('Current Location', mulundRailwayStation);
    _markers['dhanvantariHospital'] = createMarker('Current Location', dhanvantariHospital);
    _markers['mulundSonapur'] = createMarker('Current Location', mulundSonapur);
    _markers['municipalSchool'] = createMarker('Current Location', municipalSchool);
    _markers['mulundCheckNakaBusStation'] = createMarker('Current Location', mulundCheckNakaBusStation);
    _markers['maharanaPratapChowk'] = createMarker('Current Location', maharanaPratapChowk);
    _markers['wagleEstate'] = createMarker('Current Location', wagleEstate);
    _markers['marathonChowkTeenHaathNaka'] = createMarker('Current Location', marathonChowkTeenHaathNaka);
    _markers['louisWadi'] = createMarker('Current Location', louisWadi);
    _markers['nitinCompany'] = createMarker('Current Location', nitinCompany);
    _markers['cadburyJunction'] = createMarker('Current Location', cadburyJunction);
    _markers['majiwada'] = createMarker('Current Location', majiwada);
    _markers['kapurBawadi'] = createMarker('Current Location', kapurBawadi);
    _markers['tatwadnyanVidyapith'] = createMarker('Current Location', tatwadnyanVidyapith);
    _markers['manpada'] = createMarker('Current Location', manpada);
    _markers['brahmandAzadNagar'] = createMarker('Current Location', brahmandAzadNagar);
    _markers['patliPada'] = createMarker('Current Location', patliPada);
    _markers['waghbil'] = createMarker('Current Location', waghbil);
    _markers['muchhalaCollege'] = createMarker('Current Location', muchhalaCollege);
    _markers['anandNagar'] = createMarker('Current Location', anandNagar);
    _markers['destination'] = createMarker('Destination', destination);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: const CameraPosition(
          target: currentLocation,
          zoom: 14,
        ),
        onMapCreated: (controller) {
          _mapController = controller;
        },
        markers: _markers.values.toSet(),
      ),
    );
  }

  Marker createMarker(String id, LatLng location) {
    return Marker(
      markerId: MarkerId(id),
      position: location,
      infoWindow: InfoWindow(
        title: id,
        snippet: 'Location: ${location.latitude}, ${location.longitude}',
      ),
    );
  }
}
