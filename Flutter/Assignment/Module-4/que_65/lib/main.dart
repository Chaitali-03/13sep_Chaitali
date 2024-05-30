//65. open alert dialog when user want to exit from the application.
import 'package:flutter/material.dart';
import 'exit_confirmation_dialog.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Exit Confirmation Dialog',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        bool? exitConfirmed = await showDialog(
          context: context,
          builder: (BuildContext context) {
            return ExitConfirmationDialog();
          },
        );
        return exitConfirmed ?? false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Exit Confirmation Dialog'),
          backgroundColor: Colors.amberAccent,
        ),
        body: Center(
          child: Text(
            'Press back button to exit',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}

