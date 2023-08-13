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
                color: Colors.deepOrange,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20), topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
              ),
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

