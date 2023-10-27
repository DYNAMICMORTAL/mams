import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class BusNearMe extends StatelessWidget {
  const BusNearMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Text("Bus Near Me", style: Styles.headlineStyle2),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
