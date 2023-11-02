import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:qr_flutter/qr_flutter.dart';
import '../utils/app_styles.dart';

class ConfirmationPage extends StatelessWidget {
  final String passName;
  final String duration;
  final String startDate;
  final int price;
  final int balance;

  ConfirmationPage({
    required this.passName,
    required this.duration,
    required this.startDate,
    required this.price,
    required this.balance,
  });

  String calculateEndDate() {
    final DateTime start = DateTime.parse(startDate);
    final int durationInDays = int.tryParse(duration) ?? 0;
    final DateTime end = start.add(Duration(days: durationInDays));
    final formattedEndDate =
        DateFormat('d MMMM y').format(end); // Format end date
    return formattedEndDate;
  }

  @override
  Widget build(BuildContext context) {
    final String endDate = calculateEndDate();

    return Scaffold(
      appBar: AppBar(
        title: Text("Booking Details"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Styles.primaryColor,
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Center(
                child: Column(
                  children: [
                    Icon(
                      Icons.check_circle,
                      color: Colors.white,
                      size: 50,
                    ),
                    Text(
                      "Order Confirmed!",
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      passName,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    Text(duration, style: Styles.textStyle),
                    Text("Pass Start Date: $startDate",
                        style: Styles.textStyle, textAlign: TextAlign.center),
                    Text("Pass End Date: $endDate", style: Styles.textStyle, textAlign: TextAlign.center),
                    Text("Price: ₹$price", style: Styles.textStyle),
                    const SizedBox(height: 20),
                    Text("Updated Balance: ₹$balance", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.green, // Use a green color for the balance
                    )),
                    const SizedBox(height: 20),
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
