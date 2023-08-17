import 'package:flutter/material.dart';

import '../payments/confirm_order_view.dart';
import '../utils/app_styles.dart';

class StudentPassOfferPage extends StatelessWidget {
  final String startDate = DateTime.now().toString();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Student Pass Offer"),
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
            Text("Student Pass Offer ₹200", style: Styles.headlineStyle2),
            Text("Monthly 100 rides", style: Styles.textStyle),
            Text("7 Days, Student Category", style: Styles.textStyle),
            Text("Start date: $startDate", style: Styles.textStyle),
            Divider(),
            SizedBox(height: 10),
            Text("Passenger details: John", style: Styles.textStyle),
            Divider(),
            SizedBox(height: 10),
            Text("Terms and conditions", style: Styles.textStyle),
            Text("By paying, you agree to the (button: terms and conditions)"),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total amount:", style: Styles.headlineStyle3),
                Text("₹200", style: Styles.headlineStyle3),
              ],
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ConfirmOrderPage(
                      title: "Student Pass Offer",
                      details: "Monthly 100 rides\n7 Days, Student Category",
                      amount: 200,
                    ),
                  ),
                );
              },
              child: Text("Make Payment"),
            ),
          ],
        ),
      ),
    );
  }
}
