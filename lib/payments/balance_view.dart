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
























// import 'package:fluentui_icons/fluentui_icons.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';// Import for inputFormatters
// import 'package:gap/gap.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import '../utils/app_styles.dart';
// import 'package:flip_card/flip_card.dart';
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
//
//   @override
//   _BalanceViewState createState() => _BalanceViewState();
// }
//
// class _BalanceViewState extends State<BalanceView> {
//   String enteredPin = "";
//   // double price = 565;
//
//   void _updatePin(String newPin) {
//     setState(() {
//       enteredPin = newPin;
//     });
//   }
//
//   Future<void> _loadBalance() async {
//     double balance = 565;
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     double savedBalance = prefs.getDouble('balance') ?? 0.0;
//     setState(() {
//       balance = savedBalance;
//     });
//   }
//
//   void _verifyPin() {
//     // Replace this with your PIN verification logic
//     if (enteredPin == "1234") {
//       // Navigate to the UserDetailsPage
//
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => UserDetailsPage()),
//       );
//     } else {
//       // Show an error message or perform some action
//       print("Invalid PIN. Please try again.");
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     bool isButtonEnabled = enteredPin.length == 4; // Enable the button when 4 digits are entered
//
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
//               textAlign: TextAlign.center,
//               obscureText: true,
//               onChanged: (newPin) {
//                 setState(() {
//                   enteredPin = newPin.substring(0, 4); // Limit to 4 digits
//                 });
//               },
//               keyboardType: TextInputType.number,
//               inputFormatters: [FilteringTextInputFormatter.digitsOnly], // Only allow digits
//               maxLength: 4, // Limit input to 4 characters
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(height: 10),
//             ElevatedButton(
//               onPressed: isButtonEnabled ? _verifyPin : null, // Enable the button only when 4 digits are entered
//               child: Text("Verify PIN"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class UserDetailsPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // Replace this with the user details display
//     double price = 565;
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("MAMS Pay"),
//       ),
//       body: Container(
//         padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
//         child: Column(
//           // crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Container(
//               height: 200,
//               // width: MediaQuery.of(context).size.width*0.85,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   FlipCard(
//                     fill: Fill.fillBack,
//                     direction: FlipDirection.HORIZONTAL,
//                     side: CardSide.FRONT,
//                     front: Container(
//                       height: 200,
//                       decoration: BoxDecoration(
//                         // color: Colors.purple,
//                         image: DecorationImage(
//                           image: AssetImage("lib/assets/frontCard.png"),
//                         ),
//                         borderRadius: BorderRadius.all(Radius.circular(13)),
//                       ),
//                     ),
//                     back: Container(
//                       height: 200,
//                       decoration: BoxDecoration(
//                         // color: Colors.purple,
//                         image: DecorationImage(
//                           image: AssetImage("lib/assets/rearCard.png"),
//                         ),
//                         borderRadius: BorderRadius.all(Radius.circular(13)),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             const Gap(15),
//             Row(
//               children: [
//                 InkWell(
//                   child: Text("Can I've a physical card?", style: Styles.headlineStyle5.copyWith(fontSize: 10, color: Colors.purple),),
//                 ),
//               ],
//             ),
//             const Gap(30),
//             Container(
//               padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
//               decoration: const BoxDecoration(
//                 color: Color(0xFFFEAEAEA),
//                 borderRadius: BorderRadius.all(Radius.circular(5))
//               ),
//               child: Column(
//                 children: [
//                   Row(
//                     children: [
//                       Text("Balance: ", style: Styles.headlineStyle3,),
//                       const Spacer(),
//                       Text("₹ $price", style: Styles.headlineStyle3,)
//                     ],
//                   ),
//                 ],
//
//               ),
//             ),
//             const Gap(15),
//             Container(
//               padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 10),
//               decoration: BoxDecoration(
//                 color: Color(0xFFFF5F5F5),
//               ),
//               child: Column(
//                 children: [
//                   Row(
//                     children: [
//                       const Gap(5),
//                       Text("Features: ", style: Styles.headlineStyle4.copyWith(fontSize: 17.5),),
//                       const Gap(5),
//                     ],
//                   ),
//                   Divider(
//                       color: Colors.black,
//                   ),
//                   Container(
//                     padding: const EdgeInsets.symmetric(vertical: 15),
//                     child: Column(
//                       children: [
//                         Row(
//                           children: [
//                             const Spacer(),
//                             Icon(FluentSystemIcons.ic_fluent_wifi_1_filled, size: 48, color: Color(0xFFF690048),),
//                             const Spacer(),
//                             Icon(FluentSystemIcons.ic_fluent_qr_code_filled, size: 48, color: Color(0xFFF604d7f),),
//                             const Spacer(),
//                             Icon(Icons.shopping_cart_rounded, size: 48,),
//                             const Spacer(),
//                           ],
//                         ),
//                         Container(
//                           // width: 100,
//                           child: Row(
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: [
//                               const Spacer(),
//                               Text("Wireless", style: Styles.headlineStyle5.copyWith(fontSize: 10),),
//                               const Spacer(),
//                               Text("Add/ Pay", style: Styles.headlineStyle5.copyWith(fontSize: 10), overflow: TextOverflow.ellipsis,),
//                               const Spacer(),
//                               Text("Rewards", style: Styles.headlineStyle5.copyWith(fontSize: 10),),
//                               const Spacer(),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//
//                 ],
//               ),
//             ),
//             const Gap(15),
//             Row(
//               children: [
//                 InkWell(
//                   onTap: () {
//
//                   },
//                   child: Text("Report a theft or lost card.", style: Styles.headlineStyle5.copyWith(fontSize: 10, color: Colors.purple),),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


























import 'package:flip_card/flip_card.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  double balance = 1000.0;

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

  void _updatePin(String newPin) {
    setState(() {
      enteredPin = newPin;
    });
  }

  void _verifyPin() {
    if (enteredPin == "1234") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => UserDetailsPage(balance: balance)),
      );
    } else {
      print("Invalid PIN. Please try again.");
    }
  }

  void _updateBalance(double updatedBalance) {
    setState(() {
      balance = updatedBalance;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool isButtonEnabled = enteredPin.length == 4;

    return Center(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Enter PIN:", style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            TextField(
              textAlign: TextAlign.center,
              obscureText: true,
              onChanged: (newPin) {
                setState(() {
                  enteredPin = newPin.substring(0, 4);
                });
              },
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              maxLength: 4,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: isButtonEnabled ? _verifyPin : null,
              child: Text("Verify PIN"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UpdateBalancePage(
                      currentBalance: balance,
                      onBalanceUpdated: _updateBalance,
                    ),
                  ),
                );
              },
              child: Text("Add Balance"),
            ),
            const Gap(15),
            Text("Current Balance: ₹${balance.toStringAsFixed(2)}", style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}

class UpdateBalancePage extends StatefulWidget {
  final double currentBalance;
  final Function(double) onBalanceUpdated;

  UpdateBalancePage({required this.currentBalance, required this.onBalanceUpdated});

  @override
  _UpdateBalancePageState createState() => _UpdateBalancePageState();
}

class _UpdateBalancePageState extends State<UpdateBalancePage> {
  double _newBalance = 0.0;

  void _updateBalance() {
    double updatedBalance = widget.currentBalance + _newBalance;

    // Update the balance in SharedPreferences
    _saveBalance(updatedBalance);

    // Pass the updated balance back to the previous page using the callback
    widget.onBalanceUpdated(updatedBalance);
    Navigator.pop(context);
  }

  Future<void> _saveBalance(double updatedBalance) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setDouble('balance', updatedBalance);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Balance"),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Current Balance: ₹${widget.currentBalance.toStringAsFixed(2)}", style: TextStyle(fontSize: 20)),
              SizedBox(height: 10),
              TextField(
                textAlign: TextAlign.center,
                onChanged: (newValue) {
                  setState(() {
                    _newBalance = double.tryParse(newValue) ?? 0.0;
                  });
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Enter Additional Balance",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  _updateBalance();
                },
                child: Text("Add Balance"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class UserDetailsPage extends StatelessWidget {
  final double balance;

  UserDetailsPage({required this.balance});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MAMS Pay"),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
        child: Column(
          children: [
            Container(
              height: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FlipCard(
                    fill: Fill.fillBack,
                    direction: FlipDirection.HORIZONTAL,
                    side: CardSide.FRONT,
                    front: Container(
                      height: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("lib/assets/frontCard.png"),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(13)),
                      ),
                    ),
                    back: Container(
                      height: 200,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("lib/assets/rearCard.png"),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(13)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Gap(15),
            Row(
              children: [
                InkWell(
                  child: Text("Can I've a physical card?", style: TextStyle(fontSize: 12, color: Colors.purple)),
                ),
              ],
            ),
            const Gap(30),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
              decoration: BoxDecoration(
                color: Color(0xFFFEAEAEA),
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("Balance: ", style: TextStyle(fontSize: 20)),
                      const Spacer(),
                      Text("₹ ${balance.toStringAsFixed(2)}", style: TextStyle(fontSize: 20)),
                    ],
                  ),
                ],
              ),
            ),
            const Gap(15),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              decoration: BoxDecoration(
                color: Color(0xFFFF5F5F5),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Gap(5),
                      Text("Features: ", style: TextStyle(fontSize: 17.5)),
                      const Gap(5),
                    ],
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Spacer(),
                            Icon(FluentSystemIcons.ic_fluent_wifi_1_filled, size: 48, color: Color(0xFFF690048)),
                            const Spacer(),
                            Icon(FluentSystemIcons.ic_fluent_qr_code_filled, size: 48, color: Color(0xFFF604d7f)),
                            const Spacer(),
                            Icon(Icons.shopping_cart_rounded, size: 48),
                            const Spacer(),
                          ],
                        ),
                        Container(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Spacer(),
                              Text("Wireless", style: TextStyle(fontSize: 14)),
                              const Spacer(),
                              Text("Add/ Pay", style: TextStyle(fontSize: 14)),
                              const Spacer(),
                              Text("Rewards", style: TextStyle(fontSize: 14)),
                              const Spacer(),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Gap(15),
            Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: Text("Report a theft or lost card.", style: TextStyle(fontSize: 12, color: Colors.purple)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
