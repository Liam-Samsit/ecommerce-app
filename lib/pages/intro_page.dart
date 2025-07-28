import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          children: [
            // logo
            Image.asset('assets/images/nike.png', height: 240),

            // title

            // subtitle

            // start now button
          ],
        ),
      ),
    );
  }
}
