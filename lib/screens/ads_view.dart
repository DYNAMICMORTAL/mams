import 'package:flutter/material.dart';
import '../utils/app_styles.dart';

class BusCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.85,
      height: 210,
      child: Container(
        margin: const EdgeInsets.only(right: 15, top: 30),
        child: Column(
          children: [
            Container(
              height: 170,
              decoration: const BoxDecoration(
                color: Color(0xFF6C63FF),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
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
                        child: SizedBox(
                          width: 135,
                          height: 135,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Image(
                              image: AssetImage('lib/assets/loveit_heart.png'),
                            ),
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
                          Text(
                            "BUS PASS",
                            style: Styles.headlineStyle2.copyWith(
                                color: Colors.white, fontSize: 27),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "starting at",
                            style: Styles.headlineStyle4.copyWith(
                                color: Colors.white),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "₹9",
                            style: Styles.headlineStyle1.copyWith(
                                color: Colors.white),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Terms and Conditions Applyᵀᴹ.",
                            style: Styles.headlineStyle4.copyWith(
                                color: Colors.white, fontSize: 5),
                          )
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
    );
  }
}

class Ads extends StatelessWidget {
  const Ads({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => WelcomePassPage(),
        ));
      },
      child: BusCard(),
    );
  }
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
            Center(child: BusCard()),
            SizedBox(height: 20),
            Text(
              "Introducing the Welcome Pass for just ₹9! Enjoy 5 bus trips, each giving you a discount of up to ₹25..",
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
