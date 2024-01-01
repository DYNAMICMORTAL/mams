// // import 'package:flutter/material.dart';
// // import 'package:qr_flutter/qr_flutter.dart';
// // import 'package:shared_preferences/shared_preferences.dart';
// //
// // class YourTicketPage extends StatelessWidget {
// //   final String source;
// //   final String destination;
// //   final int totalPrice;
// //   final String date;
// //   final String time;
// //
// //   YourTicketPage({
// //     required this.source,
// //     required this.destination,
// //     required this.totalPrice,
// //     required this.date,
// //     required this.time,
// //   });
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text("Your Ticket"),
// //       ),
// //       body: Padding(
// //         padding: EdgeInsets.all(16),
// //         child: Column(
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: [
// //             Text(
// //               "Order Confirmed! 🎉",
// //               style: TextStyle(
// //                 fontSize: 24,
// //                 fontWeight: FontWeight.bold,
// //                 color: Colors.deepPurple, // Custom color
// //               ),
// //             ),
// //             SizedBox(height: 20),
// //             Card(
// //               elevation: 4, // Add elevation
// //               color: Colors.white, // Add background color
// //               shape: RoundedRectangleBorder(
// //                 borderRadius: BorderRadius.circular(12), // Add border radius
// //                 side: BorderSide(color: Colors.deepPurpleAccent, width: 2), // Add border
// //               ),
// //               child: Padding(
// //                 padding: EdgeInsets.all(16),
// //                 child: Column(
// //                   crossAxisAlignment: CrossAxisAlignment.start,
// //                   children: [
// //                     Text("Source: $source", style: TextStyle(fontSize: 18)),
// //                     Text("Destination: $destination", style: TextStyle(fontSize: 18)),
// //                     Text("Total Price: Rs. $totalPrice", style: TextStyle(fontSize: 18)),
// //                     Text("Date: $date", style: TextStyle(fontSize: 18)),
// //                     Text("Time: $time", style: TextStyle(fontSize: 18)),
// //                     SizedBox(height: 20),
// //                     Center(
// //                       child: Column(
// //                         children: [
// //                           Text(
// //                             "Scan QR Code for Valid Ticket",
// //                             style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
// //                           ),
// //                           SizedBox(height: 10),
// //                           Center(
// //                       child: QrImageView(data: "${source+destination+totalPrice.toString()+time}", size: 200)
// //                     ),
// //                         ],
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
// import 'package:flutter/material.dart';
// import 'package:qr_flutter/qr_flutter.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
// class YourTicketPage extends StatefulWidget {
//   final String source;
//   final String destination;
//   final int totalPrice;
//   final String date;
//   final String time;
//
//   YourTicketPage({
//     required this.source,
//     required this.destination,
//     required this.totalPrice,
//     required this.date,
//     required this.time,
//   });
//
//   @override
//   _YourTicketPageState createState() => _YourTicketPageState();
// }
//
// class _YourTicketPageState extends State<YourTicketPage> {
//   late String ticketSource;
//   late String ticketDestination;
//   int ticketPrice = 0;
//
//   @override
//   void initState() {
//     _loadTicket();
//     super.initState();
//   }
//
//   Future<void> _loadTicket() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     String savedSource = widget.source;
//     String savedDestination = widget.destination;
//     int savedPrice = widget.totalPrice;
//     setState(() {
//       ticketSource = savedSource;
//       ticketDestination = savedDestination;
//       ticketPrice = savedPrice;
//     });
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Your Ticket"),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               "Order Confirmed! 🎉",
//               style: TextStyle(
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.deepPurple, // Custom color
//               ),
//             ),
//             SizedBox(height: 20),
//             Card(
//               elevation: 4, // Add elevation
//               color: Colors.white, // Add background color
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(12), // Add border radius
//                 side: BorderSide(color: Colors.deepPurpleAccent, width: 2), // Add border
//               ),
//               child: Padding(
//                 padding: EdgeInsets.all(16),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text("Source: ${widget.source}", style: TextStyle(fontSize: 18)),
//                     Text("Destination: ${widget.destination}", style: TextStyle(fontSize: 18)),
//                     Text("Total Price: Rs. ${widget.totalPrice}", style: TextStyle(fontSize: 18)),
//                     Text("Date: ${widget.date}", style: TextStyle(fontSize: 18)),
//                     Text("Time: ${widget.time}", style: TextStyle(fontSize: 18)),
//                     SizedBox(height: 20),
//                     Center(
//                       child: Column(
//                         children: [
//                           Text(
//                             "Scan QR Code for Valid Ticket",
//                             style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                           ),
//                           SizedBox(height: 10),
//                           Center(
//                             child: QrImageView(data: "${widget.source + widget.destination + widget.totalPrice.toString() + widget.time}", size: 200),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }






















import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

class YourTicketPage extends StatefulWidget {
  @override
  _YourTicketPageState createState() => _YourTicketPageState();
}

class _YourTicketPageState extends State<YourTicketPage> {
  String source = "Source City";
  String destination = "Destination City";
  int totalPrice = 50; // Example price, you can replace it with your logic
  String date = "2023-12-31";
  String time = "12:00 PM";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Ticket"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Order Confirmed! 🎉",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
            SizedBox(height: 20),
            Card(
              elevation: 4,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: BorderSide(color: Colors.deepPurpleAccent, width: 2),
              ),
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Source: $source", style: TextStyle(fontSize: 18)),
                    Text("Destination: $destination",
                        style: TextStyle(fontSize: 18)),
                    Text("Total Price: Rs. $totalPrice",
                        style: TextStyle(fontSize: 18)),
                    Text("Date: $date", style: TextStyle(fontSize: 18)),
                    Text("Time: $time", style: TextStyle(fontSize: 18)),
                    SizedBox(height: 20),
                    Center(
                      child: Column(
                        children: [
                          Text(
                            "Scan QR Code for Valid Ticket",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          Center(
                            child: QrImageView(
                                data: "$source$destination$totalPrice$date$time",
                                size: 200),
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        _saveOrder(); // Save order to SharedPreferences
                      },
                      child: Text("Save Order"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _saveOrder() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> orderDetails = [
      source,
      destination,
      totalPrice.toString(),
      date,
      time,
    ];
    prefs.setStringList('order_${DateTime
        .now()
        .millisecondsSinceEpoch}', orderDetails);
  }
}