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












//
//
// import 'package:flutter/material.dart';
// import '../maps/map_overview.dart';
//
// class Down123 extends StatelessWidget {
//   const Down123({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Expanded(
//             child: MapsOverview(),
//           ),
//           Container(
//             height: MediaQuery.of(context).size.height * 0.5,
//             padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
//             decoration: BoxDecoration(
//               color: Colors.red,
//             ),
//             child: Column(
//               children: [
//                 Text("hey"),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//








import 'package:flutter/material.dart';
import '../maps/map_overview.dart';

class Down123 extends StatefulWidget {
  const Down123({Key? key}) : super(key: key);

  @override
  _Down123State createState() => _Down123State();
}

class _Down123State extends State<Down123> {
  double _containerHeight = 0.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: MapsOverview(),
              ),
              GestureDetector(
                onVerticalDragUpdate: (details) {
                  setState(() {
                    _containerHeight -= details.delta.dy / MediaQuery.of(context).size.height;
                    _containerHeight = _containerHeight.clamp(0.25, 0.5);
                  });
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * _containerHeight,
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.red,
                  ),
                  child: Column(
                    children: [

                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
