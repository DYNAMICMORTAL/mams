import 'package:flutter/material.dart';
import '../utils/app_styles.dart';

class ConfirmationPage extends StatelessWidget {
  final String passName;
  final String duration;
  final String startDate;
  final int price;

  ConfirmationPage({
    required this.passName,
    required this.duration,
    required this.startDate,
    required this.price,
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
                        style: Styles.textStyle),
                    Text("Pass end date: $endDate", style: Styles.textStyle),
                    Text("Price: ₹$price", style: Styles.textStyle),
                    SizedBox(height: 20),
                    // Add your QR code image here
                    Image.asset(
                      'lib/assets/qr_code.png',
                      width: 200,
                      height: 200,
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
