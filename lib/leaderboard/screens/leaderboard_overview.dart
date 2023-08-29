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
//                         itemCount: 4, // Add more as needed
//                         itemBuilder: (context, index) {
//                           // Edit container 1
//                           if (index == 0) {
//                             return Container(
//                               margin: EdgeInsets.all(8),
//                               width: 175,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(25),
//                                 image: DecorationImage(
//                                   image: AssetImage('assets/girl1.jpg'), // Replace with your image path
//                                   fit: BoxFit.cover,
//                                 ),
//                               ),
//                             );
//                           }
//                           if (index == 1) {
//                             return Container(
//                               margin: EdgeInsets.all(8),
//                               width: 175, // Adjust the width as needed
//                               decoration: BoxDecoration(
//                                 // color: Colors.blueGrey,
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
//                                     Text("#1",style: Styles.headlineStyle2.copyWith(fontSize: 25, fontWeight: FontWeight.w900, color: Colors.white), ),
//                                     Text("Mansi Ja..",style: Styles.headlineStyle5.copyWith(color: Colors.orange, fontWeight: FontWeight.w900, fontSize: 28,),),
//                                   ],
//                                 ),
//                               ),
//                             );
//                           }
//                           // Add code for other containers here
//                           return Container(
//                             margin: EdgeInsets.all(8),
//                             width: 175, // Adjust the width as needed
//                             color: Colors.blueGrey,
//                             // Your image and user info widgets here
//                           );
//                         },
//                       ),
//                     ),
//                   ),
//                   AnimatedOpacity(
//                     opacity: isImageOverText ? 0.0 : 1.0,
//                     duration: Duration(milliseconds: 400),
//                     child: Text(
//                       "Top 20",
//                       style: TextStyle(
//                         fontSize: 60,
//                         color: Colors.black,
//                         fontWeight: FontWeight.w900,
//                       ),
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










import 'package:flutter/material.dart';
import 'package:booktickets/utils/app_styles.dart';

class LeaderOverView extends StatefulWidget {
  const LeaderOverView({Key? key}) : super(key: key);

  @override
  _LeaderOverViewState createState() => _LeaderOverViewState();
}

class _LeaderOverViewState extends State<LeaderOverView> {
  bool isImageOverText = false;

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
                        itemCount: 4, // Add more as needed
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
                              child: Center(
                                child: Text(
                                  "Container 1",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
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
                                padding: const EdgeInsets.only(left: 20, bottom: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "#1",
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
                          ),
                        ),
                        Text(
                          "20",
                          style: TextStyle(
                            fontSize: 60,
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
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
