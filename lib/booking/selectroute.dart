import 'package:flutter/material.dart';
import 'package:mams/booking/tripdetails.dart';

class SelectRoutePage extends StatefulWidget {
  @override
  _SelectRoutePageState createState() => _SelectRoutePageState();
}

class _SelectRoutePageState extends State<SelectRoutePage> {
  String source = '';
  String destination = '';

  List<String> stationNames = [
    'MULUND BUS DEPOT',
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

  @override
  void initState() {
    super.initState();
    if (stationNames.isNotEmpty) {
      source = stationNames[0]; // Set the default source
      destination = stationNames[0]; // Set the default destination
    }
  }

  DropdownButton<String> buildDropdown(
    String value,
    void Function(String?) onChanged,
    List<String> items,
  ) {
    return DropdownButton<String>(
      value: value,
      onChanged: onChanged,
      items: items.map((String stationName) {
        return DropdownMenuItem<String>(
          value: stationName,
          child: Text(stationName),
        );
      }).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bus Booking"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Source",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            buildDropdown(source, (String? newValue) {
              setState(() {
                source = newValue ?? '';
              });
            }, stationNames),
            SizedBox(height: 20),
            Text(
              "Destination",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            buildDropdown(destination, (String? newValue) {
              setState(() {
                destination = newValue ?? '';
              });
            }, stationNames),
            SizedBox(height: 20),
            ElevatedButton(
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => TripDetailsPage(
          source: source,
          destination: destination,
          stationNames: stationNames,
        ),
      ),
    );
  },
  child: Text("Continue to Trip"),
),


          ],
        ),
      ),
    );
  }
}

