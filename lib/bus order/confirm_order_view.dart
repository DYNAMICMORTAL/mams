import 'package:flutter/material.dart';
import '../utils/app_styles.dart';
import 'confirmation.dart'; // Import the ConfirmationPage

class ConfirmOrderPage extends StatelessWidget {
  final String passName;
  final String duration;
  final String startDate;
  final int price;

  ConfirmOrderPage({
    required this.passName,
    required this.duration,
    required this.startDate,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Confirm My Order"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Confirm your order",
              style: Styles.headlineStyle2.copyWith(color: Styles.primaryColor),
            ),
            SizedBox(height: 10),
            Text("$passName ₹$price", style: Styles.headlineStyle2),
            Text(duration, style: Styles.textStyle),
            Divider(),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total amount:", style: Styles.headlineStyle3),
                Text("₹$price", style: Styles.headlineStyle3),
              ],
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ConfirmationPage(
                      passName: passName,
                      duration: duration,
                      startDate: startDate,
                      price: price,
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
