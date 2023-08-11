// import 'package:flutter/material.dart';
// import 'screens/Button_bar.dart';
// import 'screens/profile_view.dart';
// import 'inkwell_pages/settings_view.dart';
// // import 'package:google_fonts/google_fonts.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//         '/': (context) => ProfileView(),
//         '/settings': (context) => SettingsPage(),
//         '/subscriptions': (context) => SubscriptionsPage(),
//         '/rewards': (context) => RewardsPage(),
//       theme: ThemeData(
//         fontFamily: 'Poppins',
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const BottomBar(),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'screens/Button_bar.dart';
import 'screens/profile_view.dart';
import 'inkwell_pages/settings_view.dart';
import 'inkwell_pages/subscriptions_view.dart';
import 'inkwell_pages/rewards_view.dart';
// import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routes: {
        // '/': (context) => const ProfileView(),
        '/settings': (context) => const SettingsPage(),
        '/subscriptions': (context) => const SubscriptionsPage(),
        '/rewards': (context) => const RewardsPage(),
      },
      theme: ThemeData(
        fontFamily: 'Poppins',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const BottomBar(),
    );
  }
}
