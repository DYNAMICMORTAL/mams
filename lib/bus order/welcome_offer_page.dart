import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import '../utils/app_styles.dart';
import 'confirm_order_view.dart';

class WelcomeOfferPage extends StatefulWidget {
  final int balance;

  WelcomeOfferPage({this.balance = 565}); // Make balance optional with a default value

  @override
  _WelcomeOfferPageState createState() => _WelcomeOfferPageState();
}

class _WelcomeOfferPageState extends State<WelcomeOfferPage> {
  final String offerName = "Welcome Offer";
  final int durationInDays = 7;
  final String startDate = DateTime.now().toString();
  final int price = 50;
  final int balance = 565; 


  bool termsAccepted = false;

  @override
  Widget build(BuildContext context) {
    final formattedStartDate = DateFormat('d MMMM y').format(DateTime.parse(startDate));

    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome Offer"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // Header Styling
              color: Styles.primaryColor,
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Center(
                child: Text(
                  "Confirm Your Details",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              // Details Section Styling
              color: Colors.grey[200], // Background color for details section
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("$offerName ₹$price", style: Styles.headlineStyle2),
                  Text("Duration: $durationInDays days", style: Styles.textStyle),
                  Text("Start date: $formattedStartDate", style: Styles.textStyle),
                  Divider(),
                  SizedBox(height: 10),
                  Text("Passenger Details: Aditi", style: Styles.textStyle),
                ],
              ),
            ),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("MAMS Wallet Balance:", style: Styles.headlineStyle3),
                Text("₹${widget.balance}", style: Styles.headlineStyle3),
              ],
            ),
            SizedBox(height: 25),
            ElevatedButton(
              onPressed: () {
                if (termsAccepted) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ConfirmOrderPage(
                        passName: offerName,
                        duration: "Duration: $durationInDays days",
                        startDate: startDate,
                        price: price,
                        balance: widget.balance, // Pass the balance parameter
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
