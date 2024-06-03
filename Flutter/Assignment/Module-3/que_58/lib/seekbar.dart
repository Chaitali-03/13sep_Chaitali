import 'package:flutter/material.dart';

class SeekBar extends StatefulWidget {
  @override
  _SeekBar createState() => _SeekBar();
}

class _SeekBar extends State<SeekBar> {
  double redValue = 0;
  double greenValue = 0;
  double blueValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RGB SeekBar Color Changer'),backgroundColor: Colors.grey,
      ),
      body: Container(
        color: Color.fromRGBO(
          redValue.toInt(),
          greenValue.toInt(),
          blueValue.toInt(),
          1,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Red: ${redValue.toInt()}', style: TextStyle(color: Colors.red)),
              Slider(
                value: redValue,
                min: 0,
                max: 255,
                onChanged: (value) {
                  setState(() {
                    redValue = value;
                  });
                },
                activeColor: Colors.red,
                inactiveColor: Colors.red[100],
              ),
              Text('Green: ${greenValue.toInt()}',style: TextStyle(color: Colors.green)),
              Slider(
                value: greenValue,
                min: 0,
                max: 255,
                onChanged: (value) {
                  setState(() {
                    greenValue = value;
                  });
                },
                activeColor: Colors.green,
                inactiveColor: Colors.green[100],
              ),
              Text('Blue: ${blueValue.toInt()}',style: TextStyle(color: Colors.blue)),
              Slider(
                value: blueValue,
                min: 0,
                max: 255,
                onChanged: (value) {
                  setState(() {
                    blueValue = value;
                  });
                },
                activeColor: Colors.blue,
                inactiveColor: Colors.blue[100],
              ),
            ],
          ),
        ),
      ),
    );
  }
}