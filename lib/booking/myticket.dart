import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class YourTicketPage extends StatelessWidget {
  final String source;
  final String destination;
  final int totalPrice;
  final String date;
  final String time;

  YourTicketPage({
    required this.source,
    required this.destination,
    required this.totalPrice,
    required this.date,
    required this.time,
  });

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
                color: Colors.deepPurple, // Custom color
              ),
            ),
            SizedBox(height: 20),
            Card(
              elevation: 4, // Add elevation
              color: Colors.white, // Add background color
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12), // Add border radius
                side: BorderSide(color: Colors.deepPurpleAccent, width: 2), // Add border
              ),
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
                    SizedBox(height: 20),
                    Center(
                      child: Column(
                        children: [
                          Text(
                            "Scan QR Code for Valid Ticket",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          Center(
                      child: QrImageView(data: "${source+destination+totalPrice.toString()+time}", size: 200)
                    ),
                        ],
                      ),
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
