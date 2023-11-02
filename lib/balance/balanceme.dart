import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'add_balance.dart';

class BalancePage extends StatefulWidget {
  @override
  _BalancePageState createState() => _BalancePageState();
}

class _BalancePageState extends State<BalancePage> {
  int balance = 0;

  @override
  void initState() {
    super.initState();
    getBalance().then((value) {
      setState(() {
        balance = value;
      });
    });
  }

  Future<int> getBalance() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int balance = prefs.getInt('balance') ?? 0;
    return balance;
  }

  void updateBalance(int newBalance) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('balance', newBalance);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("View Balance"),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Balance: ₹$balance", style: TextStyle(fontSize: 24)),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddPointsPage(
                        currentBalance: balance,
                        updateBalance: updateBalance,
                      ),
                    ),
                  );
                },
                child: Text("Add Points"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
