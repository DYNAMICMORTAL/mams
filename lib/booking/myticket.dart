import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart'; // Import QR code library

class YourTicketPage extends StatelessWidget {
  final String source;
  final String destination;
  final int totalPrice;
  final String date;
  final String time;

  YourTicketPage({required this.source, required this.destination, required this.totalPrice, required this.date, required this.time});

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
            Text("Order Confirmed! 🎉", style: TextStyle(fontSize: 24)),
            Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Source: $source", style: TextStyle(fontSize: 18)),
                    Text("Destination: $destination", style: TextStyle(fontSize: 18)),
                    Text("Total Price: Rs. $totalPrice", style: TextStyle(fontSize: 18)),
                    Text("Date: $date", style: TextStyle(fontSize: 18)),
                    Text("Time: $time", style: TextStyle(fontSize: 18)),
                    Center(
                      child: QrImageView(data: "Valid Ticket", size: 200
                      )
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
}
