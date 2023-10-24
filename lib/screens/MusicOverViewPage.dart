import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mams/audios/audio_file.dart';
import 'package:mams/screens/profile_view.dart';
import 'package:mams/utils/app_styles.dart';

import '../inkwell_pages/MusicPlayerViewPage.dart';

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
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfileView(),
                    ),
                  );
                },
                child: Container(
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
              ),
                    ],
                  ),//NavBar MAMS TUNES
                  const Gap(10),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MusicPlayerViewPage(),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 15, top: 18, bottom: 18),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 32, // Adjust the size of the circle
                                  height:32, // Adjust the size of the circle
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
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
                                const Gap(15),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("NORO", style: Styles.headlineStyle3.copyWith(fontSize: 21),),
                                    Text("?Shimon", style: Styles.headlineStyle4.copyWith(fontSize: 10, color: Colors.grey.shade700),),
                                  ],
                                ),
                                const Spacer(),
                                Icon(FluentSystemIcons.ic_fluent_arrow_right_filled, size: 30,),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),//First Music Audio
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
