import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils/app_styles.dart';
import 'package:gap/gap.dart';
import 'dart:math' as math;

class Ads2 extends StatelessWidget {
  const Ads2({super.key});

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
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              padding: const EdgeInsets.all(16),
              child: Stack(
                children: [
                  Positioned(
                    left: 0, // Position the text to the left
                    child: Container(
                      width: 150, // Adjust the width of the text container
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Plan ahead. MAMS Reserve", style: Styles.headlineStyle2),
                          const SizedBox(height: 5), // Add a small gap between text and image
                          Container(
                            child: Row(
                              children: [
                                Text("Learn more"),
                                Icon(FluentSystemIcons.ic_fluent_arrow_right_filled),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 110, // Adjust the left position of the image
                    child: Container(
                      width: 150, // Adjust the width of the image container
                      child: Column(
                        children: [
                          Image(image: AssetImage('lib/assets/groovy.png')),
                        ],
                      ),
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
