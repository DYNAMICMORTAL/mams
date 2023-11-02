import 'package:flutter/material.dart';

import '../booking/selectroute.dart';

class PayForTicketPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pay for Ticket"),
      ),
      body: PayForTicketContent(), // Using a separate widget for content
    );
  }
}

class PayForTicketContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          GestureDetector(
            onTap: () {
              // Navigate to the SelectRoutePage when tapped
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SelectRoutePage(),
                ),
              );
            },
            child: Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Pay using MAMS pay",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Text("Superfast payments for your bus tickets"),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
