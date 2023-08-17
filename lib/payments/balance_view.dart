// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import '../utils/app_styles.dart';
//
// class Balance extends StatelessWidget {
//   const Balance({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("View Balance"),
//       ),
//       body: BalanceView(),
//     );
//   }
// }
//
// class BalanceView extends StatelessWidget {
//   const BalanceView({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text("Enter Pin: ", style: Styles.headlineStyle2,),
//           ],
//         ),
//       ),
//     );
//   }
// }
//









// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import '../utils/app_styles.dart';
//
// class Balance extends StatelessWidget {
//   const Balance({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("View Balance"),
//       ),
//       body: BalanceView(),
//     );
//   }
// }
//
// class BalanceView extends StatefulWidget {
//   const BalanceView({Key? key}) : super(key: key);
//
//   @override
//   _BalanceViewState createState() => _BalanceViewState();
// }
//
// class _BalanceViewState extends State<BalanceView> {
//   String enteredPin = "";
//
//   void _updatePin(String newPin) {
//     setState(() {
//       enteredPin = newPin;
//     });
//   }
//
//   void _verifyPin() {
//     // Replace this with your PIN verification logic
//     if (enteredPin == "1234") {
//       // Show the balance or navigate to the balance screen
//       print("PIN verified. Display balance here.");
//     } else {
//       // Show an error message or perform some action
//       print("Invalid PIN. Please try again.");
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         padding: EdgeInsets.all(20),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text("Enter PIN:", style: Styles.headlineStyle2),
//             SizedBox(height: 10),
//             // Display the entered PIN as dots
//             TextField(
//               obscureText: true,
//               onChanged: _updatePin,
//               keyboardType: TextInputType.number,
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(height: 10),
//             ElevatedButton(
//               onPressed: _verifyPin,
//               child: Text("Verify PIN"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
























import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';// Import for inputFormatters
import 'package:shared_preferences/shared_preferences.dart';
import '../utils/app_styles.dart';

class Balance extends StatelessWidget {
  const Balance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("View Balance"),
      ),
      body: BalanceView(),
    );
  }
}

class BalanceView extends StatefulWidget {
  const BalanceView({Key? key}) : super(key: key);

  @override
  _BalanceViewState createState() => _BalanceViewState();
}

class _BalanceViewState extends State<BalanceView> {
  String enteredPin = "";

  void _updatePin(String newPin) {
    setState(() {
      enteredPin = newPin;
    });
  }

  void _verifyPin() {
    // Replace this with your PIN verification logic
    if (enteredPin == "1234") {
      // Navigate to the UserDetailsPage
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => UserDetailsPage()),
      );
    } else {
      // Show an error message or perform some action
      print("Invalid PIN. Please try again.");
    }
  }

  @override
  Widget build(BuildContext context) {
    bool isButtonEnabled = enteredPin.length == 4; // Enable the button when 4 digits are entered

    return Center(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Enter PIN:", style: Styles.headlineStyle2),
            SizedBox(height: 10),
            // Display the entered PIN as dots
            TextField(
              textAlign: TextAlign.center,
              obscureText: true,
              onChanged: (newPin) {
                setState(() {
                  enteredPin = newPin.substring(0, 4); // Limit to 4 digits
                });
              },
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly], // Only allow digits
              maxLength: 4, // Limit input to 4 characters
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: isButtonEnabled ? _verifyPin : null, // Enable the button only when 4 digits are entered
              child: Text("Verify PIN"),
            ),
          ],
        ),
      ),
    );
  }
}

class UserDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Replace this with the user details display
    return Scaffold(
      appBar: AppBar(
        title: Text("User Details"),
      ),
      body: Center(
        child: Text("User's Balance: \$1000"), // Example user detail
        // Add more user details here if needed
      ),
    );
  }
}
