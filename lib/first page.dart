import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEE6F57),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [



            Image.asset(
              'assets/images/stick.png',
              width: 483,
              height: 483,
              // Add any additional image properties as needed
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: () {
            // Add your button functionality here
            print('Get Started button pressed');
          },
          style: ElevatedButton.styleFrom(
            primary:  Color(0xFF0C8CE9),
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 70),
            // Adjust padding as needed for button size
          ),
          child: Text(
            'Get Started',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
