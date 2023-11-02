// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'package:gap/gap.dart';
// import '../utils/app_styles.dart';
// import 'confirmation.dart';
//
// class ConfirmOrderPage extends StatelessWidget {
//   final String passName;
//   final String duration;
//   final String startDate;
//   final int price;
//   final int balance;
//
//   ConfirmOrderPage({
//     required this.passName,
//     required this.duration,
//     required this.startDate,
//     required this.price,
//     required this.balance,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     final DateTime today = DateTime.now();
//     final formattedStartDate = DateFormat('d MMMM y').format(today);
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Confirm My Order"),
//       ),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               "Order Summary",
//               style: Styles.headlineStyle2.copyWith(color: Styles.primaryColor),
//             ),
//             const SizedBox(height: 10),
//             Container(
//               color: Colors.grey[200], // Background color for the Order Summary section
//               padding: const EdgeInsets.all(16),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text("$passName", style: Styles.headlineStyle2),
//                       Text("₹$price", style: Styles.headlineStyle2),
//                     ],
//                   ),
//                   Gap(4),
//                   Text("Start date: $formattedStartDate", style: Styles.textStyle),
//                   Gap(4),
//                   Text(duration, style: Styles.textStyle),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 25),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Row(
//                   children: [
//                     Icon(Icons.shopping_cart, color: Styles.primaryColor), // Shopping cart icon
//                     Text("Total Amount:", style: Styles.headlineStyle3),
//                   ],
//                 ),
//                 Text("₹$price", style: Styles.headlineStyle3),
//               ],
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 int updatedBalance = balance - price;
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => ConfirmationPage(
//                       passName: passName,
//                       duration: duration,
//                       startDate: startDate,
//                       price: price,
//                       balance: updatedBalance,
//                     ),
//                   ),
//                 );
//               },
//               child: Row(
//                 children: [
//                   Icon(Icons.check_circle_outline, color: Colors.deepPurple), // Confirmation icon
//                   const SizedBox(width: 9),
//                   Text("Confirm Order", style: Styles.textStyle),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }















import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import '../utils/app_styles.dart';
import 'confirmation.dart';

class ConfirmOrderPage extends StatelessWidget {
  final String passName;
  final String duration;
  final String startDate;
  final double price;
  final double balance;

  ConfirmOrderPage({
    required this.passName,
    required this.duration,
    required this.startDate,
    required this.price,
    required this.balance,
  });

  @override
  Widget build(BuildContext context) {
    final DateTime today = DateTime.now();
    final formattedStartDate = DateFormat('d MMMM y').format(today);

    return Scaffold(
      appBar: AppBar(
        title: Text("Confirm My Order"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Order Summary",
              style: Styles.headlineStyle2.copyWith(color: Styles.primaryColor),
            ),
            const SizedBox(height: 10),
            Container(
              color: Colors.grey[200],
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("$passName", style: Styles.headlineStyle2),
                      Text("₹$price", style: Styles.headlineStyle2),
                    ],
                  ),
                  Gap(4),
                  Text("Start date: $formattedStartDate", style: Styles.textStyle),
                  Gap(4),
                  Text(duration, style: Styles.textStyle),
                ],
              ),
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.shopping_cart, color: Styles.primaryColor),
                    Text("Total Amount:", style: Styles.headlineStyle3),
                  ],
                ),
                Text("₹$price", style: Styles.headlineStyle3),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                double updatedBalance = balance - price;
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ConfirmationPage(
                      passName: passName,
                      duration: duration,
                      startDate: startDate,
                      price: price.toInt(),
                      balance: updatedBalance.toInt(),
                    ),
                  ),
                );
              },
              child: Row(
                children: [
                  Icon(Icons.check_circle_outline, color: Colors.deepPurple),
                  const SizedBox(width: 9),
                  Text("Confirm Order", style: Styles.textStyle),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
