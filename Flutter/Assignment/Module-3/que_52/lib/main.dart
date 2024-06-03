//52. Create an application with radio buttons (Add, Substraction, Multiply, Division) EditText (number1, number2) and print result as per user choice from radio button in TextView.

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: CalculatorApp(),debugShowCheckedModeBanner: false));
}
class CalculatorApp extends StatefulWidget {
  const CalculatorApp({super.key});

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  TextEditingController _num1 = TextEditingController();
  TextEditingController _num2 = TextEditingController();
  String _selectedOperation = "";
  String _result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
      appBar: AppBar(
        title: Text('Calculator',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.brown,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Select operation:',
                style: TextStyle(fontSize: 18.0),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Radio(
                        value: "Addition",
                        groupValue: _selectedOperation,
                        onChanged: (value) {
                          setState(() {
                            _selectedOperation = value!;
                          });
                        },
                      ),
                      Text('Addition'),
                    ],
                  ),

                  Row(
                    children: [
                      Radio(
                        value: "Subtraction",
                        groupValue: _selectedOperation,
                        onChanged: (value) {
                          setState(() {
                            _selectedOperation = value!;
                          });
                        },
                      ),
                      Text('Subtraction'),
                    ],
                  ),

                  Row(
                    children: [
                      Radio(
                        value: "Multiplication",
                        groupValue: _selectedOperation,
                        onChanged: (value) {
                          setState(() {
                            _selectedOperation = value!;
                          });
                        },
                      ),
                      Text('Multiplication'),
                    ],
                  ),

                  Row(
                    children: [
                      Radio(
                        value: "Division",
                        groupValue: _selectedOperation,
                        onChanged: (value) {
                          setState(() {
                            _selectedOperation = value!;
                          });
                        },
                      ),
                      Text('Division'),
                    ],
                  ),

                ],
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: _num1,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText:'First',hintText: 'Enter number 1'),
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: _num2,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText:'Second',hintText: 'Enter number 2'),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  _calculateResult();
                },
                child: Text('Calculate'),
              ),
              SizedBox(height: 16.0),
              Text(
                'Result: $_result',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
  void _calculateResult() {
    double number1 = double.tryParse(_num1.text) ?? 0.0;
    double number2 = double.tryParse(_num2.text) ?? 0.0;
    double result = 0.0;

    switch (_selectedOperation) {
      case "Addition":
        result = number1 + number2;
        break;
      case "Subtraction":
        result = number1 - number2;
        break;
      case "Multiplication":
        result = number1 * number2;
        break;
      case "Division":
        if (number2 != 0) {
          result = number1 / number2;
        } else {
          _showErrorDialog("Cannot divide by zero.");
          return;
        }
        break;
      default:
        _showErrorDialog("Please select an operation.");
        return;
    }

    setState(() {
      _result = result.toString();
    });
  }

  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Error"),
          content: Text(message),
          actions: <Widget>[
            ElevatedButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

