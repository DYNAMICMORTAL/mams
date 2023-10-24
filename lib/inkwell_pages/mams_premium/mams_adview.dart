// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:mams/utils/app_styles.dart';
//
// class MamsAdView extends StatelessWidget {
//   const MamsAdView({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           children: [
//             Container(
//               width: MediaQuery.of(context).size.width * 0.85,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Container(
//                     margin: const EdgeInsets.only(left: 10, right: 10, top: 20),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text("MAMS", style: Styles.headlineStyle1.copyWith(fontSize: 60, fontWeight: FontWeight.w900, fontFamily: 'Roboto', height: 1)),
//                         Text("PREMIUM", style: Styles.headlineStyle1.copyWith(fontSize: 60, fontWeight: FontWeight.w900, fontFamily: 'Roboto', height: 0)),
//                       ],
//                     ),
//                   ), //Container 1
//                   Container(),
//                   Container(),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mams/utils/app_styles.dart';

class MamsAdView extends StatelessWidget {
  const MamsAdView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.85,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 15, right: 0, top: 20),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.grey.shade300,
                          width: 2.5,
                        ), // Set border color to Grey Shade 300
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("MAMS", style: Styles.headlineStyle1.copyWith(fontSize: 60, fontWeight: FontWeight.w900, fontFamily: 'Roboto', height: 1)),
                        Text("PREMIUM", style: Styles.headlineStyle1.copyWith(fontSize: 60, fontWeight: FontWeight.w900, fontFamily: 'Roboto', height: 0)),
                      ],
                    ),
                  ), //Container 1
                  Container(
                    decoration: BoxDecoration(
                      
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Unlock doors to ease of transport",style: Styles.headlineStyle2.copyWith(fontSize: 10, fontWeight: FontWeight.w500, color: Colors.black ), ),
                      ],
                    ),
                  ),
                  Container(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
