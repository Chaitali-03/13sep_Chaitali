import 'package:flutter/material.dart';
import 'package:que_60/screens/home.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Delivery App',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
