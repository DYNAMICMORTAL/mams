import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mams/utils/app_styles.dart';

class SubscriptionsPage extends StatelessWidget {
  const SubscriptionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("hey", style: Styles.headlineStyle2),
              Text("hey", style: Styles.headlineStyle2),
              Text("hey", style: Styles.headlineStyle2),
              Text("hey", style: Styles.headlineStyle2),
              Text("hey", style: Styles.headlineStyle2),
            ],
          ),
        ),
      ),
    );
  }
}
