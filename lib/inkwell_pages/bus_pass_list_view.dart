import 'package:mams/bus%20order/student_pass_offer.dart';
import 'package:flutter/material.dart';
import '../utils/app_styles.dart';
import '../bus order/welcome_offer_page.dart';
import 'comingsoon.dart'; // Import the WelcomeOfferPage

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
            icon: Icons.directions_bus, // Add an icon
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => WelcomeOfferPage(),
                ),
              );
            },
          ),
          SizedBox(height: 8),
          BusPassCard(
            title: "Student Pass",
            description: "Discounted prices for students",
            icon: Icons.school, // Add an icon
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => StudentPassOfferPage(),
                ),
              );
            },
          ),
          // Add separators here
         SizedBox(height: 8),
          BusPassCard(
            title: "Unlimited Rides Pass",
            description: "Enjoy unlimited trips across the city",
            icon: Icons.card_membership,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ComingSoonPage(),
                ),
              );
            },
          ),
          // Add separators here
          SizedBox(height: 8),
          BusPassCard(
            title: "Special Concession Pass",
            description: "Passes with concessions for specially abled, reporters, etc.",
            icon: Icons.accessibility, // Add an icon
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ComingSoonPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class BusPassCard extends StatelessWidget {
  final String title;
  final String description;
  final VoidCallback? onTap;
  final IconData? icon; // Add this

  const BusPassCard({
    required this.title,
    required this.description,
    this.onTap,
    this.icon, // Add this
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 4,
        margin: EdgeInsets.only(bottom: 16.0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Add an Icon to the card
              if (icon != null)
                Icon(
                  icon,
                  color: Styles.primaryColor,
                  size: 32,
                ),
              Text(
                title,
                style: Styles.headlineStyle2.copyWith(color: Styles.primaryColor),
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
