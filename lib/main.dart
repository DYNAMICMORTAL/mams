import 'package:mams/grid/map_and_chat.dart';
import 'package:mams/inkwell_pages/123Down_view.dart';
import 'package:mams/inkwell_pages/123Up_view.dart';
import 'package:mams/inkwell_pages/65Down_view.dart';
import 'package:mams/screens/ChatScreenPage.dart';
import 'package:mams/screens/MetroChoosePage_vIew.dart';
import 'package:mams/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'balance/balance_provider.dart';
import 'inkwell_pages/AboutUsPage.dart';
import 'inkwell_pages/MMRDA1_view.dart';
import 'inkwell_pages/MMRDA2A_view.dart';
import 'inkwell_pages/MMRDA2B_view.dart';
import 'inkwell_pages/MMRDA7_view.dart';
import 'screens/Button_bar.dart';
import 'screens/profile_view.dart';
import 'inkwell_pages/settings_view.dart';
import 'inkwell_pages/subscriptions_view.dart';
import 'inkwell_pages/rewards_view.dart'; 
import 'payments/payforticket_view.dart';
import 'maps/scheduled_bus_overview.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';


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
        '/home': (context) => const HomeScreen(),
        '/123Up': (context) => const Up123(),
        '/123Down': (context) => const Down123(),
        '/chatoverview': (context) => const GridOverView(),
        '/scheduledbus': (context) => const ScheduledBuses(),
        '/profile': (context) => const ProfileView(),
        '/settings': (context) => const SettingsPage(),
        '/subscriptions': (context) => const SubscriptionsPage(),
        '/rewards': (context) => const RewardsPage(),
        '/payforticket': (context) => PayForTicketPage(),
        '/aboutUs': (context) => AboutUsPage(),
        '/chat': (context) => ChatScreen(),
        '/65Down': (context) => Down65(),
        '/scheduleBus': (context) => ScheduledBuses(),
        '/metroChoose': (context) => MetroChoosePage(),
        '/mmrda1': (context) => MMRDA1(),
        '/mmrda2a': (context) => MMRDA2A(),
        '/mmrda2b': (context) => MMRDA2B(),
        '/mmrda7': (context) => MMRDA7(),
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
// app id: 8e492089-b44e-4d7a-a574-3f598af90e53