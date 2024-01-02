// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:gap/gap.dart';
// import 'package:mams/utils/app_styles.dart';
//
// import '../../utils/leadButton.dart';
// import 'friendsLead_view.dart';
//
// class LeaderOverView extends StatefulWidget {
//   const LeaderOverView({Key? key}) : super(key: key);
//
//   @override
//   _LeaderOverViewState createState() => _LeaderOverViewState();
// }
//
// class _LeaderOverViewState extends State<LeaderOverView> {
//
//
//   bool isImageOverText = false;
//   List<String> textOrder = ['Today', 'Weekly', 'Lifetime'];
//
//
//
//   void _onTextClicked(String clickedText) {
//     setState(() {
//       int clickedIndex = textOrder.indexOf(clickedText);
//       if (clickedIndex != 0) {
//         textOrder.removeAt(clickedIndex);
//         textOrder.insert(0, clickedText);
//       }
//     });
//   }
//   TextStyle getTextStyle(bool isClicked) {
//     if (isClicked) {
//       return TextStyle(fontSize: 21, fontWeight: FontWeight.w900,);
//     } else {
//       return TextStyle(fontSize: 15,);
//     }
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Container(
//           child: Column(
//             children: [
//               Container(
//                 decoration: BoxDecoration(
//                   color: const Color(0xFFFFFDAEB),
//                 ),
//                 padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text("LEADERBOARD", style: Styles.headlineStyle1),
//                     Container(
//                       padding: const EdgeInsets.only(right: 20),
//                       child: Row(
//                         children: [
//                           Expanded(
//                             child: LeadButton(text: 'Everyone', fontSize: 15, textColor: Colors.black, buttonColor: Colors.transparent, borderColor: Colors.black,
//                             ),
//                           ),
//                           SizedBox(width: 10), // Gap of 10 pixels
//                           Expanded(
//                             child: LeadButton(text: 'Friends', fontSize: 15, textColor: Colors.black, buttonColor: Colors.transparent, borderColor: Colors.black,
//                               onTap: () {
//                                 Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>FriendsLead()));
//                               },
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Container(
//                       padding: const EdgeInsets.only(top: 25, left: 25),
//                       child: Row(
//                         children: textOrder.map((text) {
//                           bool isClicked = textOrder.indexOf(text) == 0;
//                           return InkWell(
//                             onTap: () {
//                               _onTextClicked(text);
//                             },
//                             child: Padding(
//                               padding: const EdgeInsets.symmetric(horizontal: 10),
//                               child: Text(
//                                 text,
//                                 style: getTextStyle(isClicked),
//                               ),
//                             ),
//                           );
//                         }).toList(),
//                       ),
//
//                     ),
//                     SizedBox(height: 20),
//                     Stack(
//                       alignment: Alignment.centerLeft, // Align text to the left
//                       children: [
//                         Container(
//                           height: 240, // Adjust the height as needed
//                           child: NotificationListener<ScrollNotification>(
//                             onNotification: (notification) {
//                               if (notification is ScrollUpdateNotification) {
//                                 setState(() {
//                                   isImageOverText =
//                                       notification.metrics.pixels > 0; // Check if images are over text
//                                 });
//                               }
//                               return false;
//                             },
//                             child: ListView.builder(
//                               scrollDirection: Axis.horizontal,
//                               itemCount: 5, // Add more as needed
//                               itemBuilder: (context, index) {
//                                 if (index == 0) {
//                                   return Container(
//                                     margin: EdgeInsets.all(8),
//                                     width: 50, // Change the width as needed
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(25),
//                                       image: DecorationImage(
//                                         image: AssetImage('assets/girl1.jpg'), // Replace with your image path
//                                         fit: BoxFit.cover,
//                                       ),
//                                     ),
//                                   );
//                                 } else if (index == 1) {
//                                   return Container(
//                                     margin: EdgeInsets.all(8),
//                                     width: 175, // Adjust the width as needed
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(25),
//                                       image: DecorationImage(
//                                         image: AssetImage('lib/assets/boy1.jpg'), // Replace with your image path
//                                         fit: BoxFit.cover,
//                                       ),
//                                     ),
//                                     child: Container(
//                                       padding: const EdgeInsets.only(left: 20, bottom: 10, right: 20),
//                                       child: Column(
//                                         mainAxisAlignment: MainAxisAlignment.end,
//                                         crossAxisAlignment: CrossAxisAlignment.start,
//                                         children: [
//                                           Text(
//                                             "#1",
//                                             style: Styles.headlineStyle2.copyWith(fontSize: 25, fontWeight: FontWeight.w900, color: Colors.white),
//                                           ),
//                                           Text(
//                                             "Naman Mathur",
//                                             style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 28, overflow: TextOverflow.ellipsis, fontFamily: 'Inter'),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   );
//                                 } else if (index == 2) {
//                                   return Container(
//                                     margin: EdgeInsets.all(8),
//                                     width: 175, // Adjust the width as needed
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(25),
//                                       image: DecorationImage(
//                                         image: AssetImage('lib/assets/girl1.jpg'), // Replace with your image path
//                                         fit: BoxFit.cover,
//                                       ),
//                                     ),
//                                     child: Container(
//                                       padding: const EdgeInsets.only(left: 20, bottom: 10),
//                                       child: Column(
//                                         mainAxisAlignment: MainAxisAlignment.end,
//                                         crossAxisAlignment: CrossAxisAlignment.start,
//                                         children: [
//                                           Text(
//                                             "#2",
//                                             style: Styles.headlineStyle2.copyWith(fontSize: 25, fontWeight: FontWeight.w900, color: Colors.white),
//                                           ),
//                                           Text(
//                                             "Riya Mathur",
//                                             style: TextStyle(color: Color(0xFFF63009F), fontWeight: FontWeight.w900, fontSize: 28, overflow: TextOverflow.ellipsis),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   );
//                                 } else if (index == 3) {
//                                   return Container(
//                                     margin: EdgeInsets.all(8),
//                                     width: 175, // Adjust the width as needed
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(25),
//                                       image: DecorationImage(
//                                         image: AssetImage('lib/assets/boy2.jpg'), // Replace with your image path
//                                         fit: BoxFit.cover,
//                                       ),
//                                     ),
//                                     child: Container(
//                                       padding: const EdgeInsets.only(left: 20, bottom: 10),
//                                       child: Column(
//                                         mainAxisAlignment: MainAxisAlignment.end,
//                                         crossAxisAlignment: CrossAxisAlignment.start,
//                                         children: [
//                                           Text(
//                                             "#3",
//                                             style: Styles.headlineStyle2.copyWith(fontSize: 25, fontWeight: FontWeight.w900, color: Colors.white),
//                                           ),
//                                           Text(
//                                             "Aryan Rathod",
//                                             style: TextStyle(color: Colors.purpleAccent, fontWeight: FontWeight.w900, fontSize: 28, overflow: TextOverflow.ellipsis),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   );
//                                 } else if (index == 4) {
//                                   return Container(
//                                     margin: EdgeInsets.all(8),
//                                     width: 175, // Adjust the width as needed
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(25),
//                                       image: DecorationImage(
//                                         image: AssetImage('lib/assets/girl2.jpg'), // Replace with your image path
//                                         fit: BoxFit.cover,
//                                       ),
//                                     ),
//                                     child: Container(
//                                       padding: const EdgeInsets.only(left: 20, bottom: 10),
//                                       child: Column(
//                                         mainAxisAlignment: MainAxisAlignment.end,
//                                         crossAxisAlignment: CrossAxisAlignment.start,
//                                         children: [
//                                           Text(
//                                             "#4",
//                                             style: Styles.headlineStyle2.copyWith(fontSize: 25, fontWeight: FontWeight.w900, color: Colors.white),
//                                           ),
//                                           Text(
//                                             "Mansi Jasooriya",
//                                             style: TextStyle(color: Colors.orange, fontWeight: FontWeight.w900, fontSize: 28, overflow: TextOverflow.ellipsis),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   );
//
//                                 }
//                               },
//                             ),
//                           ),
//                         ),
//                         AnimatedOpacity(
//                           opacity: isImageOverText ? 0.0 : 1.0,
//                           duration: Duration(milliseconds: 400),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 "Top",
//                                 style: TextStyle(
//                                   fontSize: 60,
//                                   color: Colors.black,
//                                   fontWeight: FontWeight.w900,
//                                   shadows: [
//                                     Shadow(
//                                       color: Colors.grey.shade500,      // Choose the color of the shadow
//                                       blurRadius: 2.0,          // Adjust the blur radius for the shadow effect
//                                       offset: Offset(2.0, 2.0), // Set the horizontal and vertical offset for the shadow
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Text(
//                                 "5",
//                                 style: TextStyle(
//                                   fontSize: 60,
//                                   color: Colors.black,
//                                   fontWeight: FontWeight.w900,
//                                   shadows: [
//                                     Shadow(
//                                       color: Colors.purpleAccent,      // Choose the color of the shadow
//                                       blurRadius: 2.0,          // Adjust the blur radius for the shadow effect
//                                       offset: Offset(2.0, 2.0), // Set the horizontal and vertical offset for the shadow
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.only(topRight: Radius.circular(25), topLeft: Radius.circular(25)),
//                 ),
//                 padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text("hey"),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }



























import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class BusStopPage extends StatefulWidget {
  @override
  _BusStopPageState createState() => _BusStopPageState();
}

class _BusStopPageState extends State<BusStopPage> {
  Position? _userLocation;
  Map<String, dynamic>? _nearestBusStop;

  @override
  void initState() {
    super.initState();
    _getUserLocation();
  }

  Future<void> _getUserLocation() async {
    try {
      LocationPermission permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Handle the case where the user denied permission
        print('Location permission denied by the user');
      } else {
        final userLocation = await Geolocator.getCurrentPosition();
        setState(() {
          _userLocation = userLocation;
        });
        _getNearestBusStop(userLocation.longitude, userLocation.latitude);
      }
    } catch (e) {
      print('Error getting user location: $e');
    }
  }

  Future<void> _getNearestBusStop(double userLongitude, double userLatitude) async {
    try {
      final response = await http.post(
        Uri.parse('http://localhost:3000/getNearestBusStop'),
        body: {'userLongitude': userLongitude.toString(), 'userLatitude': userLatitude.toString()},
      );

      if (response.statusCode == 200) {
        final decodedResponse = json.decode(response.body);
        final nearestBusStop = Map<String, dynamic>.from(decodedResponse);
        setState(() {
          _nearestBusStop = nearestBusStop;
        });
      } else {
        print('Failed to get nearest bus stop');
      }
    } catch (e) {
      print('Error getting nearest bus stop: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bus Stop Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_userLocation != null)
              Text('User Location: ${_userLocation?.latitude}, ${_userLocation?.longitude}'),
            if (_nearestBusStop != null)
              Text('Nearest Bus Stop: ${_nearestBusStop?['stop_name']}'),
          ],
        ),
      ),
    );
  }
}
