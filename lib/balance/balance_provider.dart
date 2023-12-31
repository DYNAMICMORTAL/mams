import 'package:flutter/material.dart';

class BalanceProvider extends ChangeNotifier {
  double _balance = 1000.0;

  double get balance => _balance;

  void deductAmount(double amount) {
    _balance -= amount;
    notifyListeners();
  }

  void addAmount(double amount) {
    _balance += amount;
    notifyListeners();
  }
}
