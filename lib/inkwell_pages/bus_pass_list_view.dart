import 'package:mams/bus%20order/student_pass_offer.dart';
import 'package:flutter/material.dart';
import '../utils/app_styles.dart';
import '../bus order/welcome_offer_page.dart'; // Import the WelcomeOfferPage

class BusPassList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bus Pass"),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          BusPassCard(
            title: "Welcome Pass",
            description: "Just starting at Rs 9",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => WelcomeOfferPage(),
                ),
              );
            },
          ),
          BusPassCard(
            title: "Student Pass",
            description: "Discounted prices for students",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => StudentPassOfferPage(),
                ),
              );
            },
          ),
          BusPassCard(
            title: "Unlimited Rides Pass",
            description: "Enjoy unlimited trips across the city",
          ),
          BusPassCard(
            title: "Special Concession Pass",
            description:
                "Passes with concessions for specially abled, reporters, etc.",
          ),
        ],
      ),
    );
  }
}

class BusPassCard extends StatelessWidget {
  final String title;
  final String description;
  final VoidCallback? onTap; // Add this

  const BusPassCard({
    required this.title,
    required this.description,
    this.onTap, // Add this
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // Use GestureDetector to make the entire card clickable
      onTap: onTap, // Use the provided onTap function
      child: Card(
        elevation: 4,
        margin: EdgeInsets.only(bottom: 16.0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style:
                    Styles.headlineStyle2.copyWith(color: Styles.primaryColor),
              ),
              SizedBox(height: 8.0),
              Text(
                description,
                style: Styles.textStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
