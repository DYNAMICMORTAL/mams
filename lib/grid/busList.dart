import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'bus_data.dart';


void main() {
  runApp(MaterialApp(
    home: BusListPage(),
  ));
}

class BusListPage extends StatelessWidget {

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bus Routes"),
      ),
      body: ListView.builder(
        itemCount: busRoutes.length,
        itemBuilder: (context, index) {
          final route = busRoutes[index];
          return ListTile(
            title: Text("${route.busNo} ${route.source} -> ${route.destination}"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BusRouteDetailsPage(route: route),
                ),
              );
            },
          );
        },
      ),
    );
  }
}


class BusRouteDetailsPage extends StatelessWidget {
  final BusRoute route;

  BusRouteDetailsPage({required this.route});

  List<String> getNextThreeTimings(String currentTime) {
    List<String> nextTimings = [];
    for (var timing in route.timings) {
      if (timing.compareTo(currentTime) > 0) {
        nextTimings.add(timing);
        if (nextTimings.length == 3) {
          break;
        }
      }
    }
    return nextTimings;
  }

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final formattedTime = DateFormat.jm().format(now); // Format the current time as "10:00 AM"

    final nextTimings = getNextThreeTimings(formattedTime);

    return Scaffold(
      appBar: AppBar(
        title: Text("${route.busNo} ${route.source} -> ${route.destination}"),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("Bus Stations :", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          for (var station in route.stations)
            ListTile(
              title: Text(station),
            ),
          Divider(),
          ListTile(
            title: Text("Next Three Timings from Source:", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
          ),
          Text("    Current time : " + formattedTime.toString()),
          for (var timing in nextTimings)
            ListTile(
              title: Text(timing),
            ),
        ],
      ),
    );
  }
}