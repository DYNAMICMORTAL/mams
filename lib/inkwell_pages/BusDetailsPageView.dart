import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:gap/gap.dart';
import '../maps/map_overview.dart';
import '../utils/app_styles.dart';
// import '../widgets/scheduled_bus_timetable.dart'; // Import your ScheduledBusTimetablePage if you have one

class BusDetailsPage extends StatelessWidget {
  final Map<String, dynamic> busDetails;

  const BusDetailsPage({Key? key, required this.busDetails}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              const Expanded(
                child: MapsOverview(),
              ),
              GestureDetector(
                // Example of using ScheduledBusTimetablePage
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => ScheduledBusTimetablePage(stopName: "Mulund Depot"),
                  //   ),
                  // );
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(25), topLeft: Radius.circular(25)),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "${busDetails['number']} - ${busDetails['route']} to ${busDetails['destination']}",
                              style: Styles.headlineStyle2.copyWith(fontSize: 18),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const Gap(10),
                          ElevatedButton(
                            onPressed: () {
                              // Example of navigating to a chat page
                              Navigator.pushNamed(context, '/chat');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: const Text(
                              "Chat",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

















//
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:fluentui_icons/fluentui_icons.dart';
// import 'package:gap/gap.dart';
// import '../maps/map_overview.dart';
// import '../utils/app_styles.dart';
//
// class BusDetailsPage extends StatefulWidget {
//   final Map<String, dynamic> busDetails;
//
//   const BusDetailsPage({Key? key, required this.busDetails}) : super(key: key);
//
//   @override
//   _BusDetailsPageState createState() => _BusDetailsPageState();
// }
//
// class _BusDetailsPageState extends State<BusDetailsPage> {
//   List<String> busStops = [];
//
//   @override
//   void initState() {
//     super.initState();
//     // Fetch bus stops when the page is initialized
//     fetchBusStops();
//   }
//
//   Future<void> fetchBusStops() async {
//     // You need to replace this URL with the actual endpoint for fetching bus stops
//     final apiUrl = 'http://192.168.0.102:3000/api/buses/${widget.busDetails['number']}/stops';
//
//     try {
//       final response = await http.get(Uri.parse(apiUrl));
//
//       if (response.statusCode == 200) {
//         final Map<String, dynamic> data = json.decode(response.body);
//         setState(() {
//           busStops = List<String>.from(data['stops']);
//         });
//       } else {
//         // Handle error
//         print('Failed to fetch bus stops. Status code: ${response.statusCode}');
//       }
//     } catch (error) {
//       // Handle error
//       print('Error fetching bus stops: $error');
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Column(
//             children: [
//               const Expanded(
//                 child: MapsOverview(),
//               ),
//               GestureDetector(
//                 child: Container(
//                   height: MediaQuery.of(context).size.height * 0.5,
//                   padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
//                   decoration: const BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.only(topRight: Radius.circular(25), topLeft: Radius.circular(25)),
//                   ),
//                   child: Column(
//                     children: [
//                       Row(
//                         children: [
//                           Expanded(
//                             child: Text(
//                               "${widget.busDetails['number']} - ${widget.busDetails['route']} to ${widget.busDetails['destination']}",
//                               style: Styles.headlineStyle2.copyWith(fontSize: 18),
//                               overflow: TextOverflow.ellipsis,
//                             ),
//                           ),
//                           const Gap(10),
//                           ElevatedButton(
//                             onPressed: () {
//                               Navigator.pushNamed(context, '/chat');
//                             },
//                             style: ElevatedButton.styleFrom(
//                               backgroundColor: Colors.black,
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(8),
//                               ),
//                             ),
//                             child: const Text(
//                               "Chat",
//                               style: TextStyle(color: Colors.white),
//                             ),
//                           ),
//                         ],
//                       ),
//                       // Display bus stops
//                       const SizedBox(height: 10),
//                       Text(
//                         'Bus Stops:',
//                         style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                       ),
//                       Expanded(
//                         child: ListView.builder(
//                           itemCount: busStops.length,
//                           itemBuilder: (context, index) {
//                             return ListTile(
//                               title: Text(busStops[index]),
//                               // Add more details or actions if needed
//                             );
//                           },
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
