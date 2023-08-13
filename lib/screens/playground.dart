import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

Color primary = const Color(0xFF687daf);


void main() {
  runApp(MaterialApp(home: Playground()));
}

class Playground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Playground', style: Styles.headlineStyle1),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Welcome to the Playground!',
              style: Styles.headlineStyle2,
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: ElevatedButton(
              onPressed: () {
                // Add your button logic here
              },
              child: Text('Explore'),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Nearby buses',
              style: Styles.headlineStyle2,
            ),
          ),
          // Add your content for "Nearby buses" here
        ],
      ),
    );
  }
}
