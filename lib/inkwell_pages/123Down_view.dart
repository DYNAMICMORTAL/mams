// import 'package:fluentui_icons/fluentui_icons.dart';
//
// import '../utils/app_styles.dart';
// import 'package:flutter/material.dart';
//
// class Down123 extends StatelessWidget {
//   const Down123({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         padding: const EdgeInsets.only(top: 45),
//         // width: MediaQuery.of(context).size.width * 0.85,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Row(
//               children: [
//                 InkWell(
//                   onTap: () {
//                     Navigator.pushNamed(context, '/chatoverview');
//                   },
//                     child: Icon(FluentSystemIcons.ic_fluent_arrow_left_filled)),
//                 const Spacer(),
//                 Expanded(
//                     child: Text("123 Mulund Depot -> CSMT Gate", style: Styles.headlineStyle2,overflow: TextOverflow.ellipsis,)),
//                 const Spacer(),
//                 Column(
//                   children: [
//                     Icon(FluentSystemIcons.ic_fluent_arrow_left_filled),
//                     Icon(FluentSystemIcons.ic_fluent_arrow_right_filled),
//                   ],
//                 ),
//               ],
//             ), //-> NavBar
//             Row(), //-> Message Container
//             Row(), //-> Textfield
//           ],
//         ),
//       ),
//     );
//   }
// }














import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:gap/gap.dart';
import '../utils/app_styles.dart';
import 'package:flutter/material.dart';

class Down123 extends StatelessWidget {
  const Down123({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 45),
              width: MediaQuery.of(context).size.width * 0.85,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/chatoverview');
                    },
                    child: Icon(FluentSystemIcons.ic_fluent_arrow_left_filled),
                  ),
                  // const Spacer(),
                  const Gap(15),
                  Flexible(
                    flex: 3, // Adjust the flex value to control the width
                    child: Text(
                      "123 Mulund Depot -> CSMT Gate",
                      style: Styles.headlineStyle3.copyWith(fontWeight: FontWeight.w900,),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const Gap(15),
                  // const Spacer(),
                  Container(
                    // height: 25,
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/123Up');
                      },
                      child: Column(
                        children: [
                          Icon(FluentSystemIcons.ic_fluent_arrow_left_filled, size: 20,),
                          Icon(FluentSystemIcons.ic_fluent_arrow_right_filled,size: 20,),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ), //-> NavBar
            Row(), //-> Message Container
            Row(), //-> Textfield
          ],
        ),
      ),
    );
  }
}
