import 'package:flutter/material.dart';

class LeadButton extends StatelessWidget {
  final String text;
  final double fontSize; // New parameter for font size
  final Color textColor; // New parameter for text color
  final Color buttonColor; // New parameter for button background color
  final Color borderColor; // New parameter for border color
  final VoidCallback? onTap;

  const LeadButton({
    Key? key,
    required this.text,
    this.fontSize = 26, // Default font size
    this.textColor = Colors.black, // Default text color
    this.buttonColor = Colors.white, // Default button color
    this.borderColor = const Color(0xFF8E7CC3), // Default border color
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity, // Adjust the width dynamically
        height: 50,
        decoration: BoxDecoration(
          color: buttonColor, // Use the provided button color
          border: Border.all(color: borderColor, width: 1), // Use the provided border color
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              color: Color(0x444444),
              offset: Offset(3, 3),
            ),
          ],
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: textColor, // Use the provided text color
              fontSize: fontSize,
              fontWeight: FontWeight.normal,
              fontFamily: 'Open Sans',
            ),
          ),
        ),
      ),
    );
  }
}
