import 'package:booktickets/chat/chat_overview.dart';
import 'package:booktickets/inkwell_pages/123Down_view.dart';
import 'package:booktickets/inkwell_pages/123Up_view.dart';
import 'package:booktickets/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'screens/Button_bar.dart';
import 'screens/profile_view.dart';
import 'inkwell_pages/settings_view.dart';
import 'inkwell_pages/subscriptions_view.dart';
import 'inkwell_pages/rewards_view.dart';
import 'inkwell_pages/payforticket_view.dart';
import 'maps/scheduled_bus_overview.dart';

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
        '/chatoverview': (context) => const ChatOverview(),
        '/scheduledbus': (context) => const ScheduledBuses(),
        '/profile': (context) => const ProfileView(),
        '/settings': (context) => const SettingsPage(),
        '/subscriptions': (context) => const SubscriptionsPage(),
        '/rewards': (context) => const RewardsPage(),
        '/payforticket': (context) => const PayForTicket(),
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
