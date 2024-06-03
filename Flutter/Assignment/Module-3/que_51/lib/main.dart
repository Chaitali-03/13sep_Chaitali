//51. Create an application to input 2 numbers from user and all numbers between those 2 numbers in next activity

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home:NumberRangeScreen(),debugShowCheckedModeBanner: false));
}

class NumberRangeScreen extends StatefulWidget {
  @override
  _NumberRangeScreenState createState() => _NumberRangeScreenState();
}

class _NumberRangeScreenState extends State<NumberRangeScreen> {
  TextEditingController _firstNumberController = TextEditingController();
  TextEditingController _secondNumberController = TextEditingController();
  List<int> numbers = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Number Range App'),
        backgroundColor: Colors.brown,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _firstNumberController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'First Number',
                hintText: "Enter first number"
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _secondNumberController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Second Number',
                hintText: "Enter first number"
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                _generateNumbers();
              },
              child: Text('Generate Numbers'),
            ),
            SizedBox(height: 32.0),
            Expanded(
              child: ListView.builder(
                itemCount: numbers.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(numbers[index].toString()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _generateNumbers() {
    int firstNumber = int.tryParse(_firstNumberController.text) ?? 0;
    int secondNumber = int.tryParse(_secondNumberController.text) ?? 0;
    if (firstNumber <= secondNumber) {
      setState(() {
        numbers = List.generate(
          (secondNumber - firstNumber).abs() + 1,
              (index) => firstNumber + index,
        );
      });
    } else {
      setState(() {
        numbers = List.generate(
          (firstNumber - secondNumber).abs() + 1,
              (index) => secondNumber + index,
        );
      });
    }
  }
}
