import 'package:flutter/material.dart';
import 'package:mams/utils/app_styles.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;
  const MyButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(25),
        width: MediaQuery.of(context).size.width * 0.9,
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(color: Colors.red.shade900,borderRadius: BorderRadius.circular(8)),
        child: Text("Sign In", style: Styles.headlineStyle4.copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
