import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../payments/payforticket_view.dart';
import '../payments/balance_view.dart';
import '../utils/app_styles.dart';

class BuyPass extends StatelessWidget {
  const BuyPass({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width*0.90,
      height: 250,
      child: Container(
        height: 180,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20), topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
        ),
        margin: const EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left:15 ,top:15,bottom: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Buy mobile pass/ticket",
                    style: Styles.headlineStyle2.copyWith(fontSize: 20),
                  ),
                  SizedBox(height: 10), // Adding space between the headings
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      // // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          child: ElevatedButton(
                            onPressed: () {
                              // Handle Bus pass button press
                            },
                            style: ElevatedButton.styleFrom(

                              primary: Colors.white, // Background color
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10), // Adjust the value as needed
                              ),
                            ),
                            child:Container(
                              padding: const EdgeInsets.only(top: 7,bottom: 7),
                              child: Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(3.0),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFFf0bdd5),
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(width: 2.5, color: Color(0xFFFf0bdd5),),
                                    ),
                                      child: Column(
                                        children: [
                                          Icon(FluentSystemIcons.ic_fluent_contact_card_filled, color: Colors.white,)
                                        ],
                                      ),
                                  ),
                                  const Gap(5),
                                  Text(
                                    "Bus pass",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10), // Adding space between the buttons
                        Container(
                          child: ElevatedButton(
                            onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PayForTicketPage(),
                    ),
                  );
                },

                            style: ElevatedButton.styleFrom(
                              primary: Colors.white, // Background color
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10), // Adjust the value as needed
                              ),
                            ),
                            child: Container(
                              padding: const EdgeInsets.only(top: 7,bottom: 7),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(3.0),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFFf0bdd5),
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(width: 2.5, color: Color(0xFFFf0bdd5),),
                                    ),
                                    child: Column(
                                      children: [
                                        Icon(FluentSystemIcons.ic_fluent_ticket_regular, color: Colors.white,)
                                      ],
                                    ),
                                  ),
                                  const Gap(5),
                                  Text(
                                    "Pay for ticket",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left:15 ,top:15,bottom: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Card Services",
                    style: Styles.headlineStyle2.copyWith(fontSize: 20),
                  ),
                  SizedBox(height: 10), // Adding space between the headings
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      // // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Balance(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(

                              primary: Colors.white, // Background color
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10), // Adjust the value as needed
                              ),
                            ),
                            child:Container(
                              padding: const EdgeInsets.only(top: 7,bottom: 7),
                              child: Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(3.0),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFFf0bdd5),
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(width: 2.5, color: Color(0xFFFf0bdd5),),
                                    ),
                                    child: Column(
                                      children: [
                                        Icon(FluentSystemIcons.ic_fluent_calendar_recurring_filled, color: Colors.white,)
                                      ],
                                    ),
                                  ),
                                  const Gap(5),
                                  Text(
                                    "Balance",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10), // Adding space between the buttons
                        Container(
                          child: ElevatedButton(
                            onPressed: () {
                              // Handle Pay for ticket button press
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white, // Background color
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10), // Adjust the value as needed
                              ),
                            ),
                            child: Container(
                              padding: const EdgeInsets.only(top: 7,bottom: 7),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(3.0),
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFFf0bdd5),
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(width: 2.5, color: Color(0xFFFf0bdd5),),
                                    ),
                                    child: Column(
                                      children: [
                                        Icon(FluentSystemIcons.ic_fluent_ticket_regular, color: Colors.white,)
                                      ],
                                    ),
                                  ),
                                  const Gap(5),
                                  Text(
                                    "Add Points",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
