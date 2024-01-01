import 'package:flutter/material.dart';
import 'package:mams/utils/app_styles.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      width: MediaQuery.of(context).size.width * 0.9,
      margin: EdgeInsets.symmetric(horizontal: 25),
      decoration: BoxDecoration(color: Colors.red.shade900,borderRadius: BorderRadius.circular(8)),
      child: Text("Sign In", style: Styles.headlineStyle4.copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
    );
  }
}
