import 'package:flutter/material.dart';
import '../utils/app_styles.dart';
import 'confirm_order_view.dart';

class WelcomeOfferPage extends StatelessWidget {
  final String passName = "Welcome Offer";
  final String duration = "5 trips | 7 days";
  final String startDate = DateTime.now().toString();
  final int price = 9;

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
            Text("$passName ₹$price", style: Styles.headlineStyle2),
            Text(duration, style: Styles.textStyle),
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
                    builder: (context) => ConfirmOrderPage(
                      passName: passName,
                      duration: duration,
                      startDate: startDate,
                      price: price,
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
