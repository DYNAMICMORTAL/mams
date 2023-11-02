import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import '../utils/app_styles.dart';
import 'confirm_order_view.dart';

class StudentPassOfferPage extends StatefulWidget {
  final int balance;

  StudentPassOfferPage({this.balance = 565}); // Make balance optional with a default value of 0

  @override
  _StudentPassOfferPageState createState() => _StudentPassOfferPageState();
}


class _StudentPassOfferPageState extends State<StudentPassOfferPage> {
  final String passName = "Student Pass Offer";
  final int durationInDays = 30;
  final String startDate = DateTime.now().toString();
  final int price = 200;
  final int balance = 565; // Initialize the balance parameter

  bool termsAccepted = false;

  @override
  Widget build(BuildContext context) {
     final formattedStartDate = DateFormat('d MMMM y').format(DateTime.parse(startDate));

    return Scaffold(
      appBar: AppBar(
        title: Text("Student Pass Offer"),
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
                  Text("$passName ₹$price", style: Styles.headlineStyle2),
                  SizedBox(height: 10),
                  Text("Duration: $durationInDays days", style: Styles.textStyle),
                  Text("Student Category", style: Styles.textStyle),
                  Text("Start date: $formattedStartDate", style: Styles.textStyle),
                  Divider(),
                  SizedBox(height: 10),
                  Text("Passenger Details: John", style: Styles.textStyle),
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
            passName: passName,
            duration: "Duration: $durationInDays days",
            startDate: startDate,
            price: price,
            balance: balance, // Pass the balance parameter
          ),
        ),
      );
    } else {
      showTermsAlert(context);
    }
  },
  child: Text("Make Payment"),
)

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
