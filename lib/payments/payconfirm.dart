import 'package:flutter/material.dart';
import '../utils/app_styles.dart';

class PaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pay for ticket"),
        actions: [
          IconButton(
            icon: Icon(Icons.payment),
            onPressed: () {
              // Add your payment-related action here
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 8),
            Text("Ask conductor for ticket amount", style: Styles.headlineStyle2,),
            SizedBox(height: 20),
            Text("Enter bus ticket amount", style: Styles.headlineStyle4),
            SizedBox(height: 8),
            Row(
              children: [
                Text("₹", style: Styles.headlineStyle2),
                SizedBox(width: 10),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: ElevatedButton(
                onPressed: () {
                  // Add payment logic here
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Styles.primaryColor),
                ),
                child: Text("Pay securely", style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
