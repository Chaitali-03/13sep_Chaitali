import 'package:flutter/material.dart';

import 'first_screen.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent,
        title: Text('Second Screen'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("WELCOME TO SECOND ACTIVITY")),
          ElevatedButton(onPressed: ()
          {
            Navigator.push(context,MaterialPageRoute(builder: (context) => FirstScreen()));
          },
            child: Text('Go to first activity'),
          ),
        ],
      ),
    );
  }
}
