import 'package:flutter/material.dart';
import 'result_screen.dart';

class InputScreen extends StatefulWidget {
  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  final TextEditingController _first = TextEditingController();
  final TextEditingController _second = TextEditingController();

  void _calculateSum() {
    final int num1 = int.tryParse(_first.text) ?? 0;
    final int num2 = int.tryParse(_second.text) ?? 0;
    final int sum = num1 + num2;

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultScreen(sum: sum),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text('Input Numbers'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _first,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter first number'),
            ),
            TextField(
              controller: _second,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter second number'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _calculateSum,
              child: Text('Calculate Sum'),
            ),
          ],
        ),
      ),
    );
  }
}
