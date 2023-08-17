import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class WelcomeOfferPage extends StatelessWidget {
  final String startDate = DateTime.now().toString(); // Replace this with your logic to fetch today's date

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome Offer"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Confirm your details",
              style: Styles.headlineStyle2.copyWith(color: Styles.primaryColor),
            ),
            SizedBox(height: 10),
            Text("Welcome Offer ₹9", style: Styles.headlineStyle2),
            Text("5 trips | 7 days", style: Styles.textStyle),
            Text("7 Days, General Category", style: Styles.textStyle),
            Text("Start date: $startDate", style: Styles.textStyle),
            Divider(),
            SizedBox(height: 10),
            Text("Passenger details: Aditi", style: Styles.textStyle),
            Divider(),
            SizedBox(height: 10),
            Text("Terms and conditions", style: Styles.textStyle),
            Text("By paying, you agree to the (button: terms and conditions)"),
            SizedBox(height: 20),
            Text("Total amount: ₹9", style: Styles.headlineStyle3),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Handle Make Payment button press
              },
              child: Text("Make Payment"),
            ),
          ],
        ),
      ),
    );
  }
}
