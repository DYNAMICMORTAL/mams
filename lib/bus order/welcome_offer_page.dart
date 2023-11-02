// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:intl/intl.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import '../utils/app_styles.dart';
// import 'confirm_order_view.dart';
//
// class WelcomeOfferPage extends StatefulWidget {
//
//   // WelcomeOfferPage({this.balance = 565}); // Make balance optional with a default value
//
//   @override
//   _WelcomeOfferPageState createState() => _WelcomeOfferPageState();
// }
//
// class _WelcomeOfferPageState extends State<WelcomeOfferPage> {
//   final String offerName = "Welcome Offer";
//   final int durationInDays = 7;
//   final String startDate = DateTime.now().toString();
//   double price = 50;
//   // double balance;
//   double balance = 565;
//
//
//   bool termsAccepted = false;
//
//   @override
//   Widget build(BuildContext context) {
//     final formattedStartDate = DateFormat('d MMMM y').format(DateTime.parse(startDate));
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Welcome Offer"),
//       ),
//       body: SingleChildScrollView(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               // Header Styling
//               color: Styles.primaryColor,
//               padding: EdgeInsets.symmetric(vertical: 10),
//               child: Center(
//                 child: Text(
//                   "Confirm Your Details",
//                   style: TextStyle(
//                     fontSize: 20,
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                   ),
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//             ),
//             SizedBox(height: 10),
//             Container(
//               // Details Section Styling
//               color: Colors.grey[200], // Background color for details section
//               padding: EdgeInsets.all(16),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text("$offerName ₹$price", style: Styles.headlineStyle2),
//                   Text("Duration: $durationInDays days", style: Styles.textStyle),
//                   Text("Start date: $formattedStartDate", style: Styles.textStyle),
//                   Divider(),
//                   SizedBox(height: 10),
//                   Text("Passenger Details: Aditi", style: Styles.textStyle),
//                 ],
//               ),
//             ),
//             SizedBox(height: 10),
//             Divider(),
//             SizedBox(height: 10),
//             Text("Terms and conditions", style: Styles.textStyle),
//             Row(
//               children: [
//                 Checkbox(
//                   value: termsAccepted,
//                   onChanged: (value) {
//                     setState(() {
//                       termsAccepted = value ?? false;
//                     });
//                   },
//                 ),
//                 Text("I agree to the terms and conditions"),
//               ],
//             ),
//             SizedBox(height: 20),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text("Total amount:", style: Styles.headlineStyle3),
//                 Text("₹$price", style: Styles.headlineStyle3),
//               ],
//             ),
//             SizedBox(height: 10),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text("MAMS Wallet Balance:", style: Styles.headlineStyle3),
//                 Text("₹${balance}", style: Styles.headlineStyle3),
//               ],
//             ),
//             SizedBox(height: 25),
//             ElevatedButton(
//               onPressed: () async {
//                 if (termsAccepted) {
//                   double updatedBalance = balance - price;
//                   SharedPreferences prefs = await SharedPreferences.getInstance();
//                   prefs.setDouble('balance', updatedBalance);
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => ConfirmOrderPage(
//                         passName: offerName,
//                         duration: "Duration: $durationInDays days",
//                         startDate: startDate,
//                         price: price.toInt(),
//                         balance: updatedBalance.toInt(), // Pass the balance parameter
//                       ),
//                     ),
//                   );
//                 } else {
//                   showTermsAlert(context);
//                 }
//               },
//               child: Text("Make Payment"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   void showTermsAlert(BuildContext context) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return CupertinoAlertDialog(
//           title: Text("Terms and Conditions"),
//           content: Text("Please accept the terms and conditions to proceed."),
//           actions: [
//             CupertinoDialogAction(
//               isDefaultAction: true,
//               child: Text("OK"),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }
// }


































import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../utils/app_styles.dart';
import 'confirm_order_view.dart';

class WelcomeOfferPage extends StatefulWidget {
  @override
  _WelcomeOfferPageState createState() => _WelcomeOfferPageState();
}

class _WelcomeOfferPageState extends State<WelcomeOfferPage> {
  final String offerName = "Welcome Offer";
  final int durationInDays = 7;
  final String startDate = DateTime.now().toString();
  double price = 50;
  double balance = 0.0;
  bool termsAccepted = false;

  @override
  void initState() {
    _loadBalance();
    super.initState();
  }

  Future<void> _loadBalance() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    double savedBalance = prefs.getDouble('balance') ?? 0.0;
    setState(() {
      balance = savedBalance;
    });
  }

  Future<void> _updateBalance(double newBalance) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setDouble('balance', newBalance);
  }

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
              color: Colors.grey[200],
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
                Text("₹${balance.toStringAsFixed(2)}", style: Styles.headlineStyle3),
              ],
            ),
            SizedBox(height: 25),
            ElevatedButton(
              onPressed: () {
                if (termsAccepted) {
                  double updatedBalance = balance - price;
                  _updateBalance(updatedBalance);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ConfirmOrderPage(
                        passName: offerName,
                        duration: "Duration: $durationInDays days",
                        startDate: startDate,
                        price: price.toDouble(),
                        balance: updatedBalance.toDouble(),
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
