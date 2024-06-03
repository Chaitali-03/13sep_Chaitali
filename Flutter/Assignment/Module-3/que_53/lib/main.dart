//53. create an application to change background when button is clicked.

import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: BackGround(),debugShowCheckedModeBanner: false));
}

class BackGround extends StatefulWidget {
  const BackGround({super.key});

  @override
  State<BackGround> createState() => _BackGroundState();
}

class _BackGroundState extends State<BackGround> {
  Color _backgroundColor = Colors.white;

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(title: Text("Background Color",style: TextStyle(color: Colors.white),),
      backgroundColor: Colors.black,),
      body: Container(
        color: _backgroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: ()
            {
              _changeBackgroundColor();
            }, child: Text("Click to chnage background"))
          ],
        ),
      ),
    );
  }

  void _changeBackgroundColor()
  {
    setState(() {
      //_backgroundColor = _backgroundColor == Colors.white ? Colors.blue : Colors.white;
      // Generate a random color
      _backgroundColor = Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
    });
  }
}