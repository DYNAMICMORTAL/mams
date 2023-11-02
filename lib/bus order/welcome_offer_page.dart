import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart'; // Import Cupertino for iOS-style dialogs
import '../utils/app_styles.dart';
import 'confirm_order_view.dart';

class WelcomeOfferPage extends StatefulWidget {
  @override
  _WelcomeOfferPageState createState() => _WelcomeOfferPageState();
}

class _WelcomeOfferPageState extends State<WelcomeOfferPage> {
  final String passName = "Welcome Offer";
  final int durationInDays = 7;
  final String startDate = DateTime.now().toString();
  final int price = 9;

  bool termsAccepted = false;

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
            Text("Duration: $durationInDays days", style: Styles.textStyle),
            Text("General Category", style: Styles.textStyle),
            Text("Start date: $startDate", style: Styles.textStyle),
            Divider(),
            SizedBox(height: 10),
            Text("Passenger details: Aditi", style: Styles.textStyle),
            SizedBox(height: 10),
            Divider(),
            SizedBox(height: 10),
            Text("Terms and conditions", style: Styles.textStyle),
            Row(
              children: [
                Checkbox(
                  value: termsAccepted,
                  onChanged: (value) {
                    setState(() {
                      termsAccepted = value ?? false;
                    });
                  },
                ),
                Text("I agree to the terms and conditions"),
              ],
            ),
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
                if (termsAccepted) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ConfirmOrderPage(
                        passName: passName,
                        duration: "Duration: $durationInDays days",
                        startDate: startDate,
                        price: price,
                      ),
                    ),
                  );
                } else {
                  showTermsAlert(context);
                }
              },
              child: Text("Make Payment"),
            ),
          ],
        ),
      ),
    );
  }

  void showTermsAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text("Terms and Conditions"),
          content: Text("Please accept the terms and conditions to proceed."),
          actions: [
            CupertinoDialogAction(
              isDefaultAction: true,
              child: Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
