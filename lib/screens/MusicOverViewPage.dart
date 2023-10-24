import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mams/utils/app_styles.dart';

class MusicOverView extends StatelessWidget {
  const MusicOverView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 15, right: 15, top: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text("Listen Now", style: Styles.headlineStyle1,),
              const Spacer(),
              Container(
                width: 49.5, // Adjust the size of the circle
                height: 49.5, // Adjust the size of the circle
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue, // Change the color of the circle
                ),
                child: Center(
                  child: Icon(
                    Icons.star,
                    color: Colors.white, // Change the color of the icon
                    size: 20.0, // Adjust the size of the icon
                  ),
                ),
              ),
                    ],
                  ),//NavBar MAMS TUNES
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
