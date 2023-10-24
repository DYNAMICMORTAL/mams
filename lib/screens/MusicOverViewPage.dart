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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Today's Picks", style: Styles.headlineStyle3.copyWith(fontSize: 30),),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      height: 240,
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.all(8),
                            width: 175, // Adjust the width as needed
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              image: DecorationImage(
                                image: AssetImage('lib/assets/kayan.jpg'), // Replace with your image path
                                fit: BoxFit.cover,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Container(
                              padding: const EdgeInsets.only(left: 20, bottom: 10, right: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Kayan",
                                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 28, overflow: TextOverflow.ellipsis, fontFamily: 'Inter'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(8),
                            width: 175, // Adjust the width as needed
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              image: DecorationImage(
                                image: AssetImage('lib/assets/arijit.jpg'), // Replace with your image path
                                fit: BoxFit.cover,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Container(
                              padding: const EdgeInsets.only(left: 20, bottom: 10, right: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Arijit Singh",
                                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 28, overflow: TextOverflow.ellipsis, fontFamily: 'Inter'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(8),
                            width: 175, // Adjust the width as needed
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              image: DecorationImage(
                                image: AssetImage('lib/assets/citimall.jpg'), // Replace with your image path
                                fit: BoxFit.cover,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Container(
                              padding: const EdgeInsets.only(left: 20, bottom: 10, right: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Citimall",
                                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 28, overflow: TextOverflow.ellipsis, fontFamily: 'Inter'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(8),
                            width: 175, // Adjust the width as needed
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              image: DecorationImage(
                                image: AssetImage('lib/assets/arrehman.jpg'), // Replace with your image path
                                fit: BoxFit.cover,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Container(
                              padding: const EdgeInsets.only(left: 20, bottom: 10, right: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "A.R. Rehman",
                                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 28, overflow: TextOverflow.ellipsis, fontFamily: 'Inter'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Release Radar 📡", style: Styles.headlineStyle3.copyWith(fontSize: 25),),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("For Artists", style: Styles.headlineStyle3.copyWith(fontSize: 25),),
                    ],
                  ),



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
                                    Text("To you", style: Styles.headlineStyle3.copyWith(fontSize: 21),),
                                    Text("indiancitizen", style: Styles.headlineStyle4.copyWith(fontSize: 10, color: Colors.grey.shade700),),
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
