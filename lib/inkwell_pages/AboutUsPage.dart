import 'package:flutter/material.dart';
import 'package:mams/utils/app_styles.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                "MAMS TEAM",
                style: Styles.headlineStyle1.copyWith(fontSize: 48),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "We at MAMS believe in transforming commutes into meaningful journeys, fostering connection, culture, and well-being for a vibrant urban lifestyle.",
                textAlign: TextAlign.center,
                style: Styles.headlineStyle3,
              ),
            ),
            SizedBox(height: 40), // Add spacing
            Text(
              "The Team Behind MAMS",
              style: Styles.headlineStyle5.copyWith(color: Colors.black54, fontSize: 21),
            ),
            SizedBox(height: 10), // Add spacing
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black54),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Text("Mihir Amin"),
                  Text("Om Bhojane"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
