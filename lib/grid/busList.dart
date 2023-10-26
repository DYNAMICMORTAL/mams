import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MaterialApp(
    home: BusListPage(),
  ));
}

class BusListPage extends StatelessWidget {
  final List<BusRoute> busRoutes = [
    BusRoute(
      "AC 58",
      "Thane Station",
      "Mira Road Station",
      ["Thane Station", "Income Tax Office", "Highway Junction", "Cadbury Junction", "Majiwada Naka", "Manpada", "Dongari Pada", "Anand Nagar", "Ovale Village", "Shri Ram Hospital", "Bhayander Pada", "Gaimukh", "Kajupada", "Chena Bridge", "Vishram Grih", "Varsova / Fountain Hotel", "Jain Mandir", "Ghodbunder Village", "Western Hotel", "Kashigaon", "Silver Park", "Mira Road Station"],
      
      [
        "09:22 am", "09:52 am", "10:22 am", "10:52 am", "11:22 am", "11:52 am", "12:52 pm",
        "01:22 pm", "01:52 pm", "02:22 pm", "02:52 pm", "03:22 pm", "04:52 pm", "05:22 pm",
        "05:52 pm", "06:22 pm", "06:52 pm", "07:22 pm", "08:22 pm", "08:52 pm", "09:22 pm",
        "09:52 pm", "10:22 pm", "10:52 pm",
      ],
    ),
    BusRoute(
      "100",
      "Thane Station",
      "Lokmanya Nagar",
      ["Thane Station", "Gaondevi", "A K Joshi Vidyalaya", "ICE Factory", "Hari Niwas", "Forest Office Bus Stop", "Marfi Company", "Louis Wadi", "Nitin Company Junction", "Siddheshwar Talao", "Cadbury Junction", "JK Raymond", "Vartak Nagar", "Korus Company", "Runwal Plaza", "Aai Mata Mandir", "Yashodhan Nagar", "Lokmanya Nagar"]
,
      ["06:36 am", "07:36 am", "08:46 am", "10:06 am", "11:56 am", "04:26 pm", "05:36 pm", "06:56 pm", "08:16 pm", "10:06 pm", "11:06 pm"]

    ),

  ];
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

class BusRoute {
  final String busNo;
  final String source;
  final String destination;
  final List<String> stations;
  final List<String> timings;

  BusRoute(this.busNo, this.source, this.destination, this.stations, this.timings);
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