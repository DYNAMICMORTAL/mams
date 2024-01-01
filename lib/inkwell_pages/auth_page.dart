import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import '../screens/Button_bar.dart';
import 'login_page_overview.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // user is logged In
          if(snapshot.hasData){
            return BottomBar();
          }
          // user is NOT Logged in
          else {
            return loginPageOverview();
          }
        },
      ),
    );
  }
}
