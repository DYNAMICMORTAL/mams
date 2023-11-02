import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mams/utils/app_styles.dart';

class AddPointsPage extends StatefulWidget {
  final int currentBalance;
  final Function(int) updateBalance;

  AddPointsPage({required this.currentBalance, required this.updateBalance});

  @override
  _AddPointsPageState createState() => _AddPointsPageState();
}

class _AddPointsPageState extends State<AddPointsPage> {
  int _pointsToAdd = 0;

  void _addPoints() {
    int newBalance = widget.currentBalance + _pointsToAdd;
    widget.updateBalance(newBalance);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Balance"), 
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Add Balance", style: TextStyle(fontSize: 24)),
            SizedBox(height: 10),
            Text("Current Balance: ₹${widget.currentBalance}", style: TextStyle(fontSize: 18)),
            SizedBox(height: 20),
            Container(
  constraints: BoxConstraints(maxWidth: 200), // Set the maximum width
  child: TextField(
    keyboardType: TextInputType.number,
    onChanged: (value) {
      setState(() {
        _pointsToAdd = int.tryParse(value) ?? 0;
      });
    },
    decoration: InputDecoration(
      labelText: "Points to Add",
    ),
  ),
),
SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                _addPoints();
              },
              child: Text("Add Points"),
            ),
          ],
        ),
      ),
    );
  }
}
