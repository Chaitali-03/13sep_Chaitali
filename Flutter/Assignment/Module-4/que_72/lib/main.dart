//72. create a Phone call App when user first time open the app it will automatically generate one dialog which has two option allow, deny if click on allow permission is grant in settings.
import 'package:flutter/material.dart';
import 'package:que_72/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Phone Call App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
