//57. Write a program in android display screen color which the Color will be select from the radio button.
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: ColorBackground(),debugShowCheckedModeBanner: false,));
}
class ColorBackground extends StatefulWidget {
  const ColorBackground({super.key});

  @override
  State<ColorBackground> createState() => _ColorBackgroundState();
}

class _ColorBackgroundState extends State<ColorBackground> {
  Color _selectedColor = Colors.white;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Color Selector'),
      ),
      body: Card(
        color: _selectedColor,
        child: Column(
          children: [
            RadioListTile(
              title: Text('Red'),
              value: Colors.red,
              groupValue: _selectedColor,
              onChanged: _setColor,
            ),
            RadioListTile(
              title: Text('Green'),
              value: Colors.green,
              groupValue: _selectedColor,
              onChanged: _setColor,
            ),
            RadioListTile(
              title: Text('Blue'),
              value: Colors.blue,
              groupValue: _selectedColor,
              onChanged: _setColor,
            ),
            RadioListTile(
              title: Text('Yellow'),
              value: Colors.yellow,
              groupValue: _selectedColor,
              onChanged: _setColor,
            ),
            RadioListTile(
              title: Text('Purple'),
              value: Colors.purple,
              groupValue: _selectedColor,
              onChanged: _setColor,
            ),
          ],
        ),
      ),
    );
  }
  void _setColor(Color? color) {
    setState(() {
      _selectedColor = color!;
    });
  }
}

