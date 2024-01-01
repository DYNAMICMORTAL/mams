import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mams/utils/app_styles.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SubscriptionsPage extends StatefulWidget {
  const SubscriptionsPage({super.key});

  @override
  State<SubscriptionsPage> createState() => _SubscriptionsPageState();
}

class _SubscriptionsPageState extends State<SubscriptionsPage> {
  late String ticketSource;
  late String ticketDestination;
  int ticketPrice = 0;

  @override
  void initState() {
    _loadTicket();
    super.initState();
  }

  Future<void> _loadTicket() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    // String savedSource = widget.source;
    // String savedDestination = widget.destination;
    // int savedPrice = widget.totalPrice;
    setState(() {
      // ticketSource = savedSource;
      // ticketDestination = savedDestination;
      // ticketPrice = savedPrice;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Previous Orders"),

      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            children: [
              Text("hey", style: Styles.headlineStyle4,),
              Text("hey"),
            ],
          ),
        ),
      ),
    );
  }
}


















// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
// class SubscriptionsPage extends StatefulWidget {
//   const SubscriptionsPage({Key? key}) : super(key: key);
//
//   @override
//   State<SubscriptionsPage> createState() => _SubscriptionsPageState();
// }
//
// class _SubscriptionsPageState extends State<SubscriptionsPage> {
//   List<Map<String, dynamic>> orderHistory = [];
//
//   @override
//   void initState() {
//     _loadOrderHistory();
//     super.initState();
//   }
//   Future<void> _loadOrderHistory() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     List<String> orderKeys = prefs.getKeys().where((key) => key.startsWith('order_')).toList();
//     orderHistory = orderKeys.map((key) {
//       List<String>? orderDetails = prefs.getStringList(key);
//       if (orderDetails != null && orderDetails.length == 5) {
//         return {
//           'source': orderDetails[0],
//           'destination': orderDetails[1],
//           'totalPrice': int.parse(orderDetails[2]),
//           'date': orderDetails[3],
//           'time': orderDetails[4],
//         };
//       }
//       return null;
//     }).where((order) => order != null).toList();
//
//     setState(() {});
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Previous Orders"),
//       ),
//       body: SingleChildScrollView(
//         scrollDirection: Axis.vertical,
//         child: Container(
//           padding: EdgeInsets.all(16),
//           child: Column(
//             children: [
//               for (var order in orderHistory)
//                 Card(
//                   elevation: 4,
//                   margin: EdgeInsets.symmetric(vertical: 8),
//                   child: ListTile(
//                     title: Text("Source: ${order['source']}"),
//                     subtitle: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text("Destination: ${order['destination']}"),
//                         Text("Total Price: Rs. ${order['totalPrice']}"),
//                         Text("Date: ${order['date']}"),
//                         Text("Time: ${order['time']}"),
//                       ],
//                     ),
//                   ),
//                 ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
