import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mams/utils/app_styles.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("MAMS TEAM", style: Styles.headlineStyle1.copyWith(fontSize: 48),),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        margin: const EdgeInsets.only(left: 0, right: 0, top: 15),
                        child: Text("We at MAMS believe in transforming commutes into meaningful journeys, fostering connection, culture, and well-being for a vibrant urban lifestyle.", textAlign: TextAlign.left, style: Styles.headlineStyle3,)),
                    ]
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Container(
                      // margin: const EdgeInsets.only(left: ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("The Team Behind MAMS",style: Styles.headlineStyle5.copyWith(color: Colors.black54, fontSize: 21)),
                        ],
                      )),
                  Container(
                    child: Text("Mihir Amin"),
                  ),
                  Container(
                    child: Text("Om Bhojane"),
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
