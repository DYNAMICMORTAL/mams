import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import '../utils/app_styles.dart';

class ConfirmationPage extends StatelessWidget {
  final String passName;
  final String duration;
  final String startDate;
  final int price;
  final int balance; // Add the balance parameter

  ConfirmationPage({
    required this.passName,
    required this.duration,
    required this.startDate,
    required this.price,
    required this.balance, // Initialize the balance parameter
  });

  // Function to calculate the end date based on the start date and duration
  String calculateEndDate() {
    final DateTime start = DateTime.parse(startDate);
    final int durationInDays = int.tryParse(duration) ?? 0;
    final DateTime end =
        start.add(Duration(days: durationInDays)); // Add duration in days
    final formattedEndDate =
        '${end.year}-${end.month.toString().padLeft(2, '0')}-${end.day.toString().padLeft(2, '0')}';
    return formattedEndDate;
  }

  @override
  Widget build(BuildContext context) {
    final String endDate = calculateEndDate();

    return Scaffold(
      appBar: AppBar(
        title: Text("Booking details"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              
              color: Styles.primaryColor,
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "Order Confirmed! 🎉",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20),
            Card(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      passName,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 10),
                    Text(duration, style: Styles.textStyle),
                    Text("Pass start date: $startDate",
                        style: Styles.textStyle, textAlign: TextAlign.center),
                    Text("Pass end date: $endDate", style: Styles.textStyle, textAlign: TextAlign.center,),
                    Text("Price: ₹$price", style: Styles.textStyle),
SizedBox(height: 20),
Text("Updated Balance: ₹$balance", style: Styles.textStyle), // Show the updated balance
SizedBox(height: 20),

                    // Add your QR code image here
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
