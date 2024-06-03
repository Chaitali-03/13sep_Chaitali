import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: CheckboxExample(),debugShowCheckedModeBanner: false));
}
class CheckboxExample extends StatefulWidget {
  const CheckboxExample({super.key});

  @override
  State<CheckboxExample> createState() => _CheckboxExampleState();
}

class _CheckboxExampleState extends State<CheckboxExample> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
      appBar: AppBar(
        title: Text('Checkbox Example',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.brown),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Text to display when Checkbox is checked'),
            Checkbox(
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value!;
                });
              },
            ),
            SizedBox(height: 20),
            Visibility(
              visible: isChecked,
              child: Center(
                child: Text(
                  'Hello user',
                  style: TextStyle(fontSize: 60,color: Colors.deepPurple,),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

