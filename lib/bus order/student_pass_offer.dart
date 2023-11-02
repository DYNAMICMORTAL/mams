import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../utils/app_styles.dart';
import 'confirm_order_view.dart';

class StudentPassOfferPage extends StatefulWidget {
  @override
  _StudentPassOfferPageState createState() => _StudentPassOfferPageState();
}

class _StudentPassOfferPageState extends State<StudentPassOfferPage> {
  final String passName = "Student Pass Offer";
  final int durationInDays = 30;
  final String startDate = DateTime.now().toString();
  final int price = 200;

  bool termsAccepted = false;

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
            Text("$passName ₹$price", style: Styles.headlineStyle2),
            Text("Duration: $durationInDays days", style: Styles.textStyle),
            Text("Student Category", style: Styles.textStyle),
            Text("Start date: $startDate", style: Styles.textStyle),
            Divider(),
            SizedBox(height: 10),
            Text("Passenger details: John", style: Styles.textStyle),
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
