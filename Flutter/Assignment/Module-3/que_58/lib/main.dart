//58. Write a program you have taken three seek bar controls. From three Seekbar which Seekbar value changed the background color of device will be changed.

import 'package:flutter/material.dart';
import 'package:que_58/seekbar.dart';

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
      title: 'Seekbar',
      home: SeekBar()
    );
  }
}
