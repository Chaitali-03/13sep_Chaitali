import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final int sum;

  ResultScreen({required this.sum});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text('Result'),
      ),
      body: Center(
        child: Text(
          'The sum is: $sum',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
