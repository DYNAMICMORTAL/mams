// import 'package:fluentui_icons/fluentui_icons.dart';
//
// import '../utils/app_styles.dart';
// import 'package:flutter/material.dart';
//
// class Down123 extends StatelessWidget {
//   const Down123({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         padding: const EdgeInsets.only(top: 45),
//         // width: MediaQuery.of(context).size.width * 0.85,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Row(
//               children: [
//                 InkWell(
//                   onTap: () {
//                     Navigator.pushNamed(context, '/chatoverview');
//                   },
//                     child: Icon(FluentSystemIcons.ic_fluent_arrow_left_filled)),
//                 const Spacer(),
//                 Expanded(
//                     child: Text("123 Mulund Depot -> CSMT Gate", style: Styles.headlineStyle2,overflow: TextOverflow.ellipsis,)),
//                 const Spacer(),
//                 Column(
//                   children: [
//                     Icon(FluentSystemIcons.ic_fluent_arrow_left_filled),
//                     Icon(FluentSystemIcons.ic_fluent_arrow_right_filled),
//                   ],
//                 ),
//               ],
//             ), //-> NavBar
//             Row(), //-> Message Container
//             Row(), //-> Textfield
//           ],
//         ),
//       ),
//     );
//   }
// }












//
//
// import 'package:flutter/material.dart';
// import '../maps/map_overview.dart';
//
// class Down123 extends StatelessWidget {
//   const Down123({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Expanded(
//             child: MapsOverview(),
//           ),
//           Container(
//             height: MediaQuery.of(context).size.height * 0.5,
//             padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
//             decoration: BoxDecoration(
//               color: Colors.red,
//             ),
//             child: Column(
//               children: [
//                 Text("hey"),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//







//
// import 'package:fluentui_icons/fluentui_icons.dart';
// import 'package:flutter/material.dart';
// import 'package:gap/gap.dart';
// import '../maps/map_overview.dart';
// import '../utils/app_styles.dart';
//
// class Down123 extends StatefulWidget {
//   const Down123({Key? key}) : super(key: key);
//
//   @override
//   _Down123State createState() => _Down123State();
// }
//
// class _Down123State extends State<Down123> {
//   double _containerHeight = 0.5;
//   bool _showDepotContainer = false;
//   bool _showRailwayStationContainer = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Column(
//             children: [
//               Expanded(
//                 child: MapsOverview(),
//               ),
//               GestureDetector(
//                 onVerticalDragUpdate: (details) {
//                   setState(() {
//                     _containerHeight -= details.delta.dy / MediaQuery.of(context).size.height;
//                     _containerHeight = _containerHeight.clamp(0.25, 0.9);
//                   });
//                 },
//                 child: Container(
//                   height: MediaQuery.of(context).size.height * _containerHeight,
//                   padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.only(topRight: Radius.circular(25), topLeft: Radius.circular(25)),
//                   ),
//                   child: Column(
//                     children: [
//                       Row(
//                         children: [
//                           Expanded(
//                             child: Text(
//                               "123 - Mulund Depot -> Kasarvadawli",
//                               style: Styles.headlineStyle2.copyWith(fontSize: 18),
//                               overflow: TextOverflow.ellipsis,
//                             ),
//                           ),
//                           const Gap(10),
//                           ElevatedButton(
//                             onPressed: () {
//                               Navigator.pushNamed(context, '/chat'); // Replace with your route
//                             },
//                             style: ElevatedButton.styleFrom(
//                               backgroundColor: Colors.black,
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(8),
//                               ),
//                             ),
//                             child: Text(
//                               "Chat",
//                               style: TextStyle(color: Colors.white),
//                             ),
//                           ),
//                         ],
//                       ),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Container(
//                             child: Column(
//                               children: [
//                                 GestureDetector(
//                                   onTap: () {
//                                     setState(() {
//                                       _showRailwayStationContainer = !_showRailwayStationContainer;
//                                     });
//                                   },
//                                   child: Align(
//                                     alignment: Alignment.centerLeft,
//                                     child: Text(
//                                       "Mulund Depot", style: Styles.headlineStyle3,
//                                     ),
//                                   ),
//                                 ),
//                                 Visibility(
//                                   visible: _showRailwayStationContainer,
//                                   child: Container(
//                                     child: Column(
//                                       crossAxisAlignment: CrossAxisAlignment.start,
//                                       children: [
//                                         Text("Arriving in"),
//                                         Row(
//                                           children: [
//                                             Icon(FluentSystemIcons.ic_fluent_wifi_1_filled),
//                                             const Spacer(),
//                                             Text("2 Minutes"),
//                                           ],
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Container(
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 GestureDetector(
//                                   onTap: () {
//                                     setState(() {
//                                       _showDepotContainer = !_showDepotContainer;
//                                     });
//                                   },
//                                   child: Text(
//                                     "Mulund Railway Station West", style: Styles.headlineStyle3,
//                                   ),
//                                 ),
//                                 Visibility(
//                                   visible: _showDepotContainer,
//                                   child: Container(
//                                     child: Column(
//                                       crossAxisAlignment: CrossAxisAlignment.start,
//                                       children: [
//                                         Text("Arriving in"),
//                                         Row(
//                                           children: [
//                                             Icon(FluentSystemIcons.ic_fluent_wifi_1_filled),
//                                             const Spacer(),
//                                             Text("2 Minutes"),
//                                           ],
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
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
//
//








// import 'package:fluentui_icons/fluentui_icons.dart';
// import 'package:flutter/material.dart';
// import 'package:gap/gap.dart';
// import '../maps/map_overview.dart';
// import '../utils/app_styles.dart';
//
// class Down123 extends StatefulWidget {
//   const Down123({Key? key}) : super(key: key);
//
//   @override
//   _Down123State createState() => _Down123State();
// }
//
// class _Down123State extends State<Down123> {
//   double _containerHeight = 0.5;
//   bool _showDepotContainer = false;
//   bool _showRailwayStationContainer = false;
//
//   void _toggleDepotContainer() {
//     setState(() {
//       _showDepotContainer = !_showDepotContainer;
//       _showRailwayStationContainer = false; // Close the other container
//     });
//   }
//
//   void _toggleRailwayStationContainer() {
//     setState(() {
//       _showRailwayStationContainer = !_showRailwayStationContainer;
//       _showDepotContainer = false; // Close the other container
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Column(
//             children: [
//               Expanded(
//                 child: MapsOverview(),
//               ),
//               GestureDetector(
//                 onVerticalDragUpdate: (details) {
//                   setState(() {
//                     _containerHeight -= details.delta.dy / MediaQuery.of(context).size.height;
//                     _containerHeight = _containerHeight.clamp(0.25, 0.9);
//                   });
//                 },
//                 child: Container(
//                   height: MediaQuery.of(context).size.height * _containerHeight,
//                   padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.only(topRight: Radius.circular(25), topLeft: Radius.circular(25)),
//                   ),
//                   child: Column(
//                     children: [
//                       Row(
//                         children: [
//                           Expanded(
//                             child: Text(
//                               "123 - Mulund Depot -> Kasarvadawli",
//                               style: Styles.headlineStyle2.copyWith(fontSize: 18),
//                               overflow: TextOverflow.ellipsis,
//                             ),
//                           ),
//                           const Gap(10),
//                           ElevatedButton(
//                             onPressed: () {
//                               Navigator.pushNamed(context, '/chat'); // Replace with your route
//                             },
//                             style: ElevatedButton.styleFrom(
//                               backgroundColor: Colors.black,
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(8),
//                               ),
//                             ),
//                             child: Text(
//                               "Chat",
//                               style: TextStyle(color: Colors.white),
//                             ),
//                           ),
//                         ],
//                       ),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Container(
//                             child: Column(
//                               children: [
//                                 GestureDetector(
//                                   onTap: _toggleDepotContainer,
//                                   child: Align(
//                                     alignment: Alignment.centerLeft,
//                                     child: Text(
//                                       "Mulund Depot", style: Styles.headlineStyle3,
//                                     ),
//                                   ),
//                                 ),
//                                 Visibility(
//                                   visible: _showDepotContainer,
//                                   child: Container(
//                                     child: Column(
//                                       crossAxisAlignment: CrossAxisAlignment.start,
//                                       children: [
//                                         Text("Arriving in"),
//                                         Row(
//                                           children: [
//                                             Icon(FluentSystemIcons.ic_fluent_wifi_1_filled),
//                                             const Spacer(),
//                                             Text("2 Minutes"),
//                                           ],
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Container(
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 GestureDetector(
//                                   onTap: _toggleRailwayStationContainer,
//                                   child: Text(
//                                     "Mulund BMC Garden", style: Styles.headlineStyle3,
//                                   ),
//                                 ),
//                                 Visibility(
//                                   visible: _showRailwayStationContainer,
//                                   child: Container(
//                                     child: Column(
//                                       crossAxisAlignment: CrossAxisAlignment.start,
//                                       children: [
//                                         Text("Arriving in"),
//                                         Row(
//                                           children: [
//                                             Icon(FluentSystemIcons.ic_fluent_wifi_1_filled),
//                                             const Spacer(),
//                                             Text("2 Minutes"),
//                                           ],
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Container(
//                             child: Column(
//                               children: [
//                                 GestureDetector(
//                                   onTap: _toggleDepotContainer,
//                                   child: Align(
//                                     alignment: Alignment.centerLeft,
//                                     child: Text(
//                                       "Maharshi Arvind Chowk", style: Styles.headlineStyle3,
//                                     ),
//                                   ),
//                                 ),
//                                 Visibility(
//                                   visible: _showDepotContainer,
//                                   child: Container(
//                                     child: Column(
//                                       crossAxisAlignment: CrossAxisAlignment.start,
//                                       children: [
//                                         Text("Arriving in"),
//                                         Row(
//                                           children: [
//                                             Icon(FluentSystemIcons.ic_fluent_wifi_1_filled),
//                                             const Spacer(),
//                                             Text("2 Minutes"),
//                                           ],
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Container(
//                             child: Column(
//                               children: [
//                                 GestureDetector(
//                                   onTap: _toggleDepotContainer,
//                                   child: Align(
//                                     alignment: Alignment.centerLeft,
//                                     child: Text(
//                                       "Maharshi Arvind Chowk", style: Styles.headlineStyle3,
//                                     ),
//                                   ),
//                                 ),
//                                 Visibility(
//                                   visible: _showDepotContainer,
//                                   child: Container(
//                                     child: Column(
//                                       crossAxisAlignment: CrossAxisAlignment.start,
//                                       children: [
//                                         Text("Arriving in"),
//                                         Row(
//                                           children: [
//                                             Icon(FluentSystemIcons.ic_fluent_wifi_1_filled),
//                                             const Spacer(),
//                                             Text("2 Minutes"),
//                                           ],
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Container(
//                             child: Column(
//                               children: [
//                                 GestureDetector(
//                                   onTap: _toggleDepotContainer,
//                                   child: Align(
//                                     alignment: Alignment.centerLeft,
//                                     child: Text(
//                                       "Maharshi Arvind Chowk", style: Styles.headlineStyle3,
//                                     ),
//                                   ),
//                                 ),
//                                 Visibility(
//                                   visible: _showDepotContainer,
//                                   child: Container(
//                                     child: Column(
//                                       crossAxisAlignment: CrossAxisAlignment.start,
//                                       children: [
//                                         Text("Arriving in"),
//                                         Row(
//                                           children: [
//                                             Icon(FluentSystemIcons.ic_fluent_wifi_1_filled),
//                                             const Spacer(),
//                                             Text("2 Minutes"),
//                                           ],
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Container(
//                             child: Column(
//                               children: [
//                                 GestureDetector(
//                                   onTap: _toggleDepotContainer,
//                                   child: Align(
//                                     alignment: Alignment.centerLeft,
//                                     child: Text(
//                                       "Maharshi Arvind Chowk", style: Styles.headlineStyle3,
//                                     ),
//                                   ),
//                                 ),
//                                 Visibility(
//                                   visible: _showDepotContainer,
//                                   child: Container(
//                                     child: Column(
//                                       crossAxisAlignment: CrossAxisAlignment.start,
//                                       children: [
//                                         Text("Arriving in"),
//                                         Row(
//                                           children: [
//                                             Icon(FluentSystemIcons.ic_fluent_wifi_1_filled),
//                                             const Spacer(),
//                                             Text("2 Minutes"),
//                                           ],
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Container(
//                             child: Column(
//                               children: [
//                                 GestureDetector(
//                                   onTap: _toggleDepotContainer,
//                                   child: Align(
//                                     alignment: Alignment.centerLeft,
//                                     child: Text(
//                                       "Maharshi Arvind Chowk", style: Styles.headlineStyle3,
//                                     ),
//                                   ),
//                                 ),
//                                 Visibility(
//                                   visible: _showDepotContainer,
//                                   child: Container(
//                                     child: Column(
//                                       crossAxisAlignment: CrossAxisAlignment.start,
//                                       children: [
//                                         Text("Arriving in"),
//                                         Row(
//                                           children: [
//                                             Icon(FluentSystemIcons.ic_fluent_wifi_1_filled),
//                                             const Spacer(),
//                                             Text("2 Minutes"),
//                                           ],
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Container(
//                             child: Column(
//                               children: [
//                                 GestureDetector(
//                                   onTap: _toggleDepotContainer,
//                                   child: Align(
//                                     alignment: Alignment.centerLeft,
//                                     child: Text(
//                                       "Maharshi Arvind Chowk", style: Styles.headlineStyle3,
//                                     ),
//                                   ),
//                                 ),
//                                 Visibility(
//                                   visible: _showDepotContainer,
//                                   child: Container(
//                                     child: Column(
//                                       crossAxisAlignment: CrossAxisAlignment.start,
//                                       children: [
//                                         Text("Arriving in"),
//                                         Row(
//                                           children: [
//                                             Icon(FluentSystemIcons.ic_fluent_wifi_1_filled),
//                                             const Spacer(),
//                                             Text("2 Minutes"),
//                                           ],
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Container(
//                             child: Column(
//                               children: [
//                                 GestureDetector(
//                                   onTap: _toggleDepotContainer,
//                                   child: Align(
//                                     alignment: Alignment.centerLeft,
//                                     child: Text(
//                                       "Maharshi Arvind Chowk", style: Styles.headlineStyle3,
//                                     ),
//                                   ),
//                                 ),
//                                 Visibility(
//                                   visible: _showDepotContainer,
//                                   child: Container(
//                                     child: Column(
//                                       crossAxisAlignment: CrossAxisAlignment.start,
//                                       children: [
//                                         Text("Arriving in"),
//                                         Row(
//                                           children: [
//                                             Icon(FluentSystemIcons.ic_fluent_wifi_1_filled),
//                                             const Spacer(),
//                                             Text("2 Minutes"),
//                                           ],
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Container(
//                             child: Column(
//                               children: [
//                                 GestureDetector(
//                                   onTap: _toggleDepotContainer,
//                                   child: Align(
//                                     alignment: Alignment.centerLeft,
//                                     child: Text(
//                                       "Maharshi Arvind Chowk", style: Styles.headlineStyle3,
//                                     ),
//                                   ),
//                                 ),
//                                 Visibility(
//                                   visible: _showDepotContainer,
//                                   child: Container(
//                                     child: Column(
//                                       crossAxisAlignment: CrossAxisAlignment.start,
//                                       children: [
//                                         Text("Arriving in"),
//                                         Row(
//                                           children: [
//                                             Icon(FluentSystemIcons.ic_fluent_wifi_1_filled),
//                                             const Spacer(),
//                                             Text("2 Minutes"),
//                                           ],
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Container(
//                             child: Column(
//                               children: [
//                                 GestureDetector(
//                                   onTap: _toggleDepotContainer,
//                                   child: Align(
//                                     alignment: Alignment.centerLeft,
//                                     child: Text(
//                                       "Maharshi Arvind Chowk", style: Styles.headlineStyle3,
//                                     ),
//                                   ),
//                                 ),
//                                 Visibility(
//                                   visible: _showDepotContainer,
//                                   child: Container(
//                                     child: Column(
//                                       crossAxisAlignment: CrossAxisAlignment.start,
//                                       children: [
//                                         Text("Arriving in"),
//                                         Row(
//                                           children: [
//                                             Icon(FluentSystemIcons.ic_fluent_wifi_1_filled),
//                                             const Spacer(),
//                                             Text("2 Minutes"),
//                                           ],
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//
//                         ],
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














// import 'package:flutter/material.dart';
// import 'package:fluentui_icons/fluentui_icons.dart';
// import 'package:gap/gap.dart';
// import '../maps/map_overview.dart';
// import '../utils/app_styles.dart';
//
// class Down123 extends StatefulWidget {
//   const Down123({Key? key}) : super(key: key);
//
//   @override
//   _Down123State createState() => _Down123State();
// }
//
// class ContainerInfo {
//   String title;
//   bool isVisible;
//
//   ContainerInfo(this.title, this.isVisible);
// }
//
// class _Down123State extends State<Down123> {
//   double _containerHeight = 0.5;
//   List<ContainerInfo> _containers = [];
//
//   @override
//   void initState() {
//     super.initState();
//     _containers = [
//       ContainerInfo("Mulund Depot", false),
//       ContainerInfo("Mulund Railway Station West", false),
//       // Add more containers as needed
//     ];
//   }
//
//   void _toggleContainerVisibility(String containerTitle) {
//     setState(() {
//       for (var container in _containers) {
//         container.isVisible = (container.title == containerTitle);
//       }
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Column(
//             children: [
//               Expanded(
//                 child: MapsOverview(),
//               ),
//               GestureDetector(
//                 onVerticalDragUpdate: (details) {
//                   setState(() {
//                     _containerHeight -= details.delta.dy / MediaQuery.of(context).size.height;
//                     _containerHeight = _containerHeight.clamp(0.25, 0.9);
//                   });
//                 },
//                 child: Container(
//                   height: MediaQuery.of(context).size.height * _containerHeight,
//                   padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.only(topRight: Radius.circular(25), topLeft: Radius.circular(25)),
//                   ),
//                   child: Column(
//                     children: [
//                       Row(
//                         children: [
//                           Expanded(
//                             child: Text(
//                               "123 - Mulund Depot -> Kasarvadawli",
//                               style: Styles.headlineStyle2.copyWith(fontSize: 18),
//                               overflow: TextOverflow.ellipsis,
//                             ),
//                           ),
//                           const Gap(10),
//                           ElevatedButton(
//                             onPressed: () {
//                               Navigator.pushNamed(context, '/chat'); // Replace with your route
//                             },
//                             style: ElevatedButton.styleFrom(
//                               backgroundColor: Colors.black,
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(8),
//                               ),
//                             ),
//                             child: Text(
//                               "Chat",
//                               style: TextStyle(color: Colors.white),
//                             ),
//                           ),
//                         ],
//                       ),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: _containers.map((container) {
//                           return buildContainer(
//                             container.title,
//                             container.isVisible,
//                             _toggleContainerVisibility,
//                           );
//                         }).toList(),
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
//
//
// }






















import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:gap/gap.dart';
import '../maps/map_overview.dart';
import '../utils/app_styles.dart';

class Down123 extends StatefulWidget {
  const Down123({Key? key}) : super(key: key);

  @override
  _Down123State createState() => _Down123State();
}

class ContainerInfo {
  String title;
  bool isVisible;

  ContainerInfo(this.title, this.isVisible);
}

class _Down123State extends State<Down123> {
  double _containerHeight = 0.5;
  List<ContainerInfo> _containers = [];

  @override
  void initState() {
    super.initState();
    _containers = [
      ContainerInfo("Mulund Depot", false),
      ContainerInfo("Mulund Railway Station West", false),
      // Add more containers as needed
    ];
  }

  void _toggleContainerVisibility(String containerTitle) {
    setState(() {
      for (var container in _containers) {
        container.isVisible = (container.title == containerTitle);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: MapsOverview(),
              ),
              GestureDetector(
                onVerticalDragUpdate: (details) {
                  setState(() {
                    _containerHeight -= details.delta.dy / MediaQuery.of(context).size.height;
                    _containerHeight = _containerHeight.clamp(0.25, 0.9);
                  });
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * _containerHeight,
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(25), topLeft: Radius.circular(25)),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "123 - Mulund Depot -> Kasarvadawli",
                              style: Styles.headlineStyle2.copyWith(fontSize: 18),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const Gap(10),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/chat'); // Replace with your route
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: Text(
                              "Chat",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: _containers.map((container) {
                          return buildContainer(
                            container.title,
                            container.isVisible,
                            _toggleContainerVisibility,
                            // Custom content for each container
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Custom Content for ${container.title}"),
                                Row(
                                  children: [
                                    Icon(FluentSystemIcons.ic_fluent_wifi_1_filled),
                                    const Spacer(),
                                    Text("5 Minutes"),
                                  ],
                                ),
                              ],
                            ),
                          );
                        }).toList(),
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

  Widget buildContainer(
      String containerText,
      bool isVisible,
      Function(String) toggleFunction,
      Widget customContent,
      ) {
    return Container(
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              toggleFunction(containerText);
            },
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                containerText,
                style: Styles.headlineStyle3,
              ),
            ),
          ),
          Visibility(
            visible: isVisible,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Custom content provided
                  customContent,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
