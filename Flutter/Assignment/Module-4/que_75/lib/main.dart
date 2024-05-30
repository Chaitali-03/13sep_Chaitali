//75. Create an Android Application which Manage Activity Lifecycle Stages and Showing Toast with Performing Different Stages.
import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lifecycle Demo',
      home: HomeScreen(),
    );
  }
}
