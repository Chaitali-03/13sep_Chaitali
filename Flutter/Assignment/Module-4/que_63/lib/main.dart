//63. Write a code to display alert dialog with positive, negative and neutral button and display toast respectively user's choice.

import 'package:flutter/material.dart';
import 'package:que_63/toast_utils.dart';

import 'alert_dialog.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Alert Dialog',
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Dialog'),
        backgroundColor: Colors.brown,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return CustomAlertDialog(
                  title: "Alert",
                  description: "This is a simple alert dialog with buttons.",
                  icon: Icons.warning,
                  onPositivePressed: () {
                    showToast("Positive button pressed");
                  },
                  onNegativePressed: () {
                    showToast("Negative button pressed");
                  },
                  onNeutralPressed: () {
                    showToast("Neutral button pressed");
                  },
                );
              },
            );
          },
          child: Text('Show Alert'),
        ),
      ),
    );
  }
}
