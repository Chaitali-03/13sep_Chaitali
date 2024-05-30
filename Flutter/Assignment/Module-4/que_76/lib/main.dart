//76. Create an Application to take input two numbers from users and when user press button then display sum of those values of next Activity.
import 'package:flutter/material.dart';
import 'input_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sum Calculator',
      home: InputScreen(),
    );
  }
}
