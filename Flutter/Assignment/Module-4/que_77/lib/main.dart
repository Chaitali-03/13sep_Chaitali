//77. Call via urllauncher, Send Sms via urllauncher.
import 'package:flutter/material.dart';
import 'communication_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Communication App',
      home: CommunicationScreen(),
    );
  }
}
