import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: ReverseNumberScreen(),debugShowCheckedModeBanner: false));
}

class ReverseNumberScreen extends StatefulWidget {
  @override
  _ReverseNumberScreenState createState() => _ReverseNumberScreenState();
}

class _ReverseNumberScreenState extends State<ReverseNumberScreen> {
  TextEditingController _controller = TextEditingController();
  String _reversedNumber = '';

  void _reverseNumber() {
    setState(() {
      String originalNumber = _controller.text;
      String reversed = '';
      for (int i = originalNumber.length - 1; i >= 0; i--) {
        reversed += originalNumber[i];
      }
      _reversedNumber = reversed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reverse Number'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter a number more then two digit',
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: _reverseNumber,
              child: Text('Reverse'),
            ),
            SizedBox(height: 20.0),
            Text(
              'Reversed Number: $_reversedNumber',
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
