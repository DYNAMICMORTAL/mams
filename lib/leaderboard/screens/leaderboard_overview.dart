import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mams/utils/app_styles.dart';

class LeaderOverView extends StatefulWidget {
  const LeaderOverView({Key? key}) : super(key: key);

  @override
  _LeaderOverViewState createState() => _LeaderOverViewState();
}

class _LeaderOverViewState extends State<LeaderOverView> {
  bool isImageOverText = false;
  List<String> textOrder = ['Today', 'Weekly', 'Lifetime'];


  void _onTextClicked(String clickedText) {
    setState(() {
      int clickedIndex = textOrder.indexOf(clickedText);
      if (clickedIndex != 0) {
        textOrder.removeAt(clickedIndex);
        textOrder.insert(0, clickedText);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("LEADERBOARD", style: Styles.headlineStyle1),
              Container(
                padding: const EdgeInsets.only(top: 25, left: 25),
                // child: Row(
                //   children: [
                //     Text("Today", style: TextStyle(fontSize: 21, fontWeight: FontWeight.w900),),
                //     const Gap(10),
                //     Text("Weekly"),
                //     const Gap(10),
                //     Text("Lifetime"),
                //   ],
                // ),
                child: Row(
                  children: textOrder.map((text) {
                    return InkWell(
                      onTap: () {
                        _onTextClicked(text);
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          text,
                          style: TextStyle(fontSize: 21, fontWeight: FontWeight.w900),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(height: 20),
              Stack(
                alignment: Alignment.centerLeft, // Align text to the left
                children: [
                  Container(
                    height: 240, // Adjust the height as needed
                    child: NotificationListener<ScrollNotification>(
                      onNotification: (notification) {
                        if (notification is ScrollUpdateNotification) {
                          setState(() {
                            isImageOverText =
                                notification.metrics.pixels > 0; // Check if images are over text
                          });
                        }
                        return false;
                      },
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5, // Add more as needed
                        itemBuilder: (context, index) {
                          if (index == 0) {
                            return Container(
                              margin: EdgeInsets.all(8),
                              width: 50, // Change the width as needed
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                image: DecorationImage(
                                  image: AssetImage('assets/girl1.jpg'), // Replace with your image path
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          } else if (index == 1) {
                            return Container(
                              margin: EdgeInsets.all(8),
                              width: 175, // Adjust the width as needed
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                image: DecorationImage(
                                  image: AssetImage('lib/assets/girl1.jpg'), // Replace with your image path
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Container(
                                padding: const EdgeInsets.only(left: 20, bottom: 10, right: 20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "#1",
                                      style: Styles.headlineStyle2.copyWith(fontSize: 25, fontWeight: FontWeight.w900, color: Colors.white),
                                    ),
                                    Text(
                                      "Mansi Jasoriya",
                                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 28, overflow: TextOverflow.ellipsis, fontFamily: 'Inter'),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          } else if (index == 2) {
                            return Container(
                              margin: EdgeInsets.all(8),
                              width: 175, // Adjust the width as needed
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                image: DecorationImage(
                                  image: AssetImage('lib/assets/girl1.jpg'), // Replace with your image path
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Container(
                                padding: const EdgeInsets.only(left: 20, bottom: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "#2",
                                      style: Styles.headlineStyle2.copyWith(fontSize: 25, fontWeight: FontWeight.w900, color: Colors.white),
                                    ),
                                    Text(
                                      "Naman Ma..",
                                      style: TextStyle(color: Colors.orange, fontWeight: FontWeight.w900, fontSize: 28, overflow: TextOverflow.ellipsis),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          } else if (index == 3) {
                            return Container(
                              margin: EdgeInsets.all(8),
                              width: 175, // Adjust the width as needed
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                image: DecorationImage(
                                  image: AssetImage('lib/assets/girl1.jpg'), // Replace with your image path
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Container(
                                padding: const EdgeInsets.only(left: 20, bottom: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "#3",
                                      style: Styles.headlineStyle2.copyWith(fontSize: 25, fontWeight: FontWeight.w900, color: Colors.white),
                                    ),
                                    Text(
                                      "Mansi Ja..",
                                      style: Styles.headlineStyle5.copyWith(color: Colors.orange, fontWeight: FontWeight.w900, fontSize: 28,),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          } else if (index == 4) {
                            return Container(
                              margin: EdgeInsets.all(8),
                              width: 175, // Adjust the width as needed
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                image: DecorationImage(
                                  image: AssetImage('lib/assets/girl1.jpg'), // Replace with your image path
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Container(
                                padding: const EdgeInsets.only(left: 20, bottom: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "#4",
                                      style: Styles.headlineStyle2.copyWith(fontSize: 25, fontWeight: FontWeight.w900, color: Colors.white),
                                    ),
                                    Text(
                                      "Mansi Ja..",
                                      style: Styles.headlineStyle5.copyWith(color: Colors.orange, fontWeight: FontWeight.w900, fontSize: 28,),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }
                          // Add code for other containers here
                          return Container(
                            margin: EdgeInsets.all(8),
                            width: 175, // Adjust the width as needed
                            color: Colors.blueGrey,
                            // Your image and user info widgets here
                          );
                        },
                      ),
                    ),
                  ),
                  AnimatedOpacity(
                    opacity: isImageOverText ? 0.0 : 1.0,
                    duration: Duration(milliseconds: 400),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Top",
                          style: TextStyle(
                            fontSize: 60,
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            shadows: [
                              Shadow(
                                color: Colors.grey.shade500,      // Choose the color of the shadow
                                blurRadius: 2.0,          // Adjust the blur radius for the shadow effect
                                offset: Offset(2.0, 2.0), // Set the horizontal and vertical offset for the shadow
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "5",
                          style: TextStyle(
                            fontSize: 60,
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            shadows: [
                              Shadow(
                                color: Colors.purpleAccent,      // Choose the color of the shadow
                                blurRadius: 2.0,          // Adjust the blur radius for the shadow effect
                                offset: Offset(2.0, 2.0), // Set the horizontal and vertical offset for the shadow
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}






















//
// import 'package:flutter/material.dart';
// import 'package:booktickets/utils/app_styles.dart';
//
// class LeaderOverView extends StatefulWidget {
//   const LeaderOverView({Key? key}) : super(key: key);
//
//   @override
//   _LeaderOverViewState createState() => _LeaderOverViewState();
// }
//
// class _LeaderOverViewState extends State<LeaderOverView> {
//   bool isImageOverText = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Container(
//           padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text("LEADERBOARD", style: Styles.headlineStyle1),
//               SizedBox(height: 20),
//               Stack(
//                 alignment: Alignment.centerLeft, // Align text to the left
//                 children: [
//                   Container(
//                     height: 240, // Adjust the height as needed
//                     child: NotificationListener<ScrollNotification>(
//                       onNotification: (notification) {
//                         if (notification is ScrollUpdateNotification) {
//                           setState(() {
//                             isImageOverText =
//                                 notification.metrics.pixels > 0; // Check if images are over text
//                           });
//                         }
//                         return false;
//                       },
//                       child: ListView.builder(
//                         scrollDirection: Axis.horizontal,
//                         itemCount: 5, // Add more as needed
//                           return prototypeItem: Container(
//                           margin: EdgeInsets.all(8),
//                       width: 175, // Adjust the width as needed
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(25),
//                         // image: DecorationImage(
//                         //   image: AssetImage('lib/assets/girl1.jpg'), // Replace with your image path
//                         //   fit: BoxFit.cover,
//                         // ),
//                         boxShadow: [
//                           BoxShadow(
//                             color: Color.fromRGBO(232, 232, 232, 1),
//                             offset: Offset(10, 10),
//                             blurRadius: 5,
//                             spreadRadius: 0,
//                           ),
//                         ],
//                       ),
//                     );
//                         itemBuilder: (context, index) {
//                           if (index == 0) {
//                             return Container(
//                               margin: EdgeInsets.all(8),
//                               width: 50, // Change the width as needed
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(25),
//                                 image: DecorationImage(
//                                   image: AssetImage('assets/girl1.jpg'), // Replace with your image path
//                                   fit: BoxFit.cover,
//                                 ),
//                               ),
//                               child: Center(
//                                 child: Text(
//                                   "Container 1",
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                               ),
//                             );
//                           } else if (index == 1) {
//                             return Container(
//                               margin: EdgeInsets.all(8),
//                               width: 175, // Adjust the width as needed
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(25),
//                                 image: DecorationImage(
//                                   image: AssetImage('lib/assets/girl1.jpg'), // Replace with your image path
//                                   fit: BoxFit.cover,
//                                 ),
//                               ),
//                               child: Container(
//                                 padding: const EdgeInsets.only(left: 20, bottom: 10),
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.end,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text(
//                                       "#1",
//                                       style: Styles.headlineStyle2.copyWith(fontSize: 25, fontWeight: FontWeight.w900, color: Colors.white),
//                                     ),
//                                     Text(
//                                       "Mansi Ja..",
//                                       style: Styles.headlineStyle5.copyWith(color: Colors.orange, fontWeight: FontWeight.w900, fontSize: 28,),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             );
//                           } else if (index == 2) {
//                             return Container(
//                               margin: EdgeInsets.all(8),
//                               width: 175, // Adjust the width as needed
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(25),
//                                 image: DecorationImage(
//                                   image: AssetImage('lib/assets/girl1.jpg'), // Replace with your image path
//                                   fit: BoxFit.cover,
//                                 ),
//                               ),
//                               child: Container(
//                                 padding: const EdgeInsets.only(left: 20, bottom: 10),
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.end,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text(
//                                       "#2",
//                                       style: Styles.headlineStyle2.copyWith(fontSize: 25, fontWeight: FontWeight.w900, color: Colors.white),
//                                     ),
//                                     Text(
//                                       "Mansi Ja..",
//                                       style: Styles.headlineStyle5.copyWith(color: Colors.orange, fontWeight: FontWeight.w900, fontSize: 28,),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             );
//                           } else if (index == 3) {
//                             return Container(
//                               margin: EdgeInsets.all(8),
//                               width: 175, // Adjust the width as needed
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(25),
//                                 image: DecorationImage(
//                                   image: AssetImage('lib/assets/girl1.jpg'), // Replace with your image path
//                                   fit: BoxFit.cover,
//                                 ),
//                               ),
//                               child: Container(
//                                 padding: const EdgeInsets.only(left: 20, bottom: 10),
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.end,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text(
//                                       "#3",
//                                       style: Styles.headlineStyle2.copyWith(fontSize: 25, fontWeight: FontWeight.w900, color: Colors.white),
//                                     ),
//                                     Text(
//                                       "Mansi Ja..",
//                                       style: Styles.headlineStyle5.copyWith(color: Colors.orange, fontWeight: FontWeight.w900, fontSize: 28,),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             );
//                           } else if (index == 4) {
//                             return Container(
//                               margin: EdgeInsets.all(8),
//                               width: 175, // Adjust the width as needed
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(25),
//                                 image: DecorationImage(
//                                   image: AssetImage('lib/assets/girl1.jpg'), // Replace with your image path
//                                   fit: BoxFit.cover,
//                                 ),
//                               ),
//                               child: Container(
//                                 padding: const EdgeInsets.only(left: 20, bottom: 10),
//                                 child: Column(
//                                   mainAxisAlignment: MainAxisAlignment.end,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text(
//                                       "#4",
//                                       style: Styles.headlineStyle2.copyWith(fontSize: 25, fontWeight: FontWeight.w900, color: Colors.white),
//                                     ),
//                                     Text(
//                                       "Mansi Ja..",
//                                       style: Styles.headlineStyle5.copyWith(color: Colors.orange, fontWeight: FontWeight.w900, fontSize: 28,),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             );
//                           }
//                         },
//                         // itemBuilder: (context, index) {
//                         //   return Container(
//                         //     margin: EdgeInsets.all(8),
//                         //     width: 175, // Adjust the width as needed
//                         //     decoration: BoxDecoration(
//                         //       borderRadius: BorderRadius.circular(25),
//                         //       image: DecorationImage(
//                         //         image: AssetImage('lib/assets/girl1.jpg'), // Replace with your image path
//                         //         fit: BoxFit.cover,
//                         //       ),
//                         //       boxShadow: [
//                         //         BoxShadow(
//                         //           color: Color.fromRGBO(232, 232, 232, 1),
//                         //           offset: Offset(10, 10),
//                         //           blurRadius: 5,
//                         //           spreadRadius: 0,
//                         //         ),
//                         //       ],
//                         //     ),
//                         //     child: Container(
//                         //       padding: const EdgeInsets.only(left: 20, bottom: 10),
//                         //       child: Column(
//                         //         mainAxisAlignment: MainAxisAlignment.end,
//                         //         crossAxisAlignment: CrossAxisAlignment.start,
//                         //         children: [
//                         //           Text(
//                         //             "#${index + 1}",
//                         //             style: Styles.headlineStyle2.copyWith(fontSize: 25, fontWeight: FontWeight.w900, color: Colors.white),
//                         //           ),
//                         //           Text(
//                         //             "Mansi Ja..",
//                         //             style: Styles.headlineStyle5.copyWith(color: Colors.orange, fontWeight: FontWeight.w900, fontSize: 28,),
//                         //           ),
//                         //         ],
//                         //       ),
//                         //     ),
//                         //   );
//                         // },
//                       ),
//                     ),
//                   ),
//                   AnimatedOpacity(
//                     opacity: isImageOverText ? 0.0 : 1.0,
//                     duration: Duration(milliseconds: 400),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "Top",
//                           style: TextStyle(
//                             fontSize: 60,
//                             color: Colors.black,
//                             fontWeight: FontWeight.w900,
//                           ),
//                         ),
//                         Text(
//                           "5",
//                           style: TextStyle(
//                             fontSize: 60,
//                             color: Colors.black,
//                             fontWeight: FontWeight.w900,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
//
//
//
//
//
//
//
//
//
//
//
//
//
