
import 'package:flutter/material.dart';

class ComingSoonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Coming Soon"),
      ),
      body: Center(
        child: Text(
          "This feature is coming soon!",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
