//59. Create login and registration form.

import 'package:flutter/material.dart';
import 'package:que_59/registration_page.dart';

import 'login_page.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Auth',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/login': (context) => LoginPage(),
        '/register': (context) => RegistrationPage(),
      },
    );
  }
}
