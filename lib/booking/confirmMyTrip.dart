import 'package:flutter/material.dart';

import 'myticket.dart';

class ConfirmMyTrip extends StatelessWidget {
  final String source;
  final String destination;
  final int totalPrice;

  ConfirmMyTrip({required this.source, required this.destination, required this.totalPrice});

  @override
  Widget build(BuildContext context) {
    // Get today's date and time
    final now = DateTime.now();
    final formattedDate = "${now.day}/${now.month}/${now.year}";
    final formattedTime = "${now.hour}:${now.minute}";

    return Scaffold(
      appBar: AppBar(
        title: Text("Confirm Trip"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Customer Name: Aditi", style: TextStyle(fontSize: 18)),
            Text("Source: $source", style: TextStyle(fontSize: 18)),
            Text("Destination: $destination", style: TextStyle(fontSize: 18)),
            Text("Date: $formattedDate", style: TextStyle(fontSize: 18)),
            Text("Time: $formattedTime", style: TextStyle(fontSize: 18)),
            Text("Total Price: Rs. $totalPrice", style: TextStyle(fontSize: 18)),
            ElevatedButton(
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => YourTicketPage(
          source: source,
          destination: destination,
          totalPrice: totalPrice,
          date: formattedDate,
          time: formattedTime,
        ),
      ),
    );
  },
  child: Text("Confirm Order"),
),

          ],
        ),
      ),
    );
  }
}
