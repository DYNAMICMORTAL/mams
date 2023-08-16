import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils/app_styles.dart';
import 'package:gap/gap.dart';
import 'dart:math' as math;

class Ads extends StatelessWidget {
  const Ads({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to the "Welcome Pass" page
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => WelcomePassPage(),
        ));
      },
      child: SizedBox(
      width: MediaQuery.of(context).size.width*0.85,
      height: 210,
      child: Container(
        // padding: const EdgeInsets.only(top: 30),
        margin: const EdgeInsets.only(right: 15, top: 30),
        child: Column(
          children: [
            Container(
              height: 170,
              decoration: const BoxDecoration(
                color: Color(0xFF6C63FF),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20), topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
              ),
              padding: const EdgeInsets.only(right: 16, top: 16, bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        // padding: const EdgeInsets.only( right: 10),
                        child: SizedBox(
                          width: 135,
                          height: 135,
                          child: Container(
                            decoration: BoxDecoration(
                              // color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Image(image: AssetImage('lib/assets/loveit_heart.png'),),
                            // child: Column(
                            //   children: [
                            //     // Text("h")
                            //   ],
                            // ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text("BUS PASS", style: Styles.headlineStyle2.copyWith(color: Colors.white, fontSize: 27),)
                        ],
                      ),
                      Row(
                        children: [
                          Text("starting at", style: Styles.headlineStyle4.copyWith(color: Colors.white),)
                        ],
                      ),
                      Row(
                        children: [
                          Text("₹9", style: Styles.headlineStyle1.copyWith(color: Colors.white),)
                        ],
                      ),
                      Row(
                        children: [
                          Text("Terms and Conditions Applyᵀᴹ.", style: Styles.headlineStyle4.copyWith(color: Colors.white, fontSize: 5),)
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
    
  
    );}
}



class WelcomePassPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome Pass"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Text(
              "Welcome Pass",
              style: Styles.headlineStyle2.copyWith(color: Styles.primaryColor),
            ),
            SizedBox(height: 20),
            Text(
              "Get Welcome Pass at just ₹9 and enjoy 5 bus trips up to ₹25 each.",
              style: Styles.textStyle,
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // Handle the payment logic here
              },
              style: ElevatedButton.styleFrom(primary: Styles.primaryColor),
              child: Text(
                "Make Payment",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
