import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class ConfirmOrderPage extends StatelessWidget {
  final String title;
  final String details;
  final int amount;

  ConfirmOrderPage({
    required this.title,
    required this.details,
    required this.amount,
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
            Text("$title ₹$amount", style: Styles.headlineStyle2),
            Text(details, style: Styles.textStyle),
            Divider(),
            SizedBox(height: 20),
            Text("Total amount: ₹$amount", style: Styles.headlineStyle3),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Handle Confirm Order button press
              },
              child: Text("Confirm Order"),
            ),
          ],
        ),
      ),
    );
  }
}
