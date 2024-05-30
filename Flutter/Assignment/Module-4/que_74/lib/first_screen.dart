import 'package:flutter/material.dart';
import 'second_screen.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('First Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("WELCOME TO FIRST ACTIVITY")),
          ElevatedButton(onPressed: ()
          {
            Navigator.push(context,MaterialPageRoute(builder: (context) => SecondScreen()));
          },
          child: Text('Go to Second activity'),
        ),
        ],
      ),
    );
  }
}
