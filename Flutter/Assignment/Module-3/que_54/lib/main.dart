//54. create an application to increate font size when plus button click and decrease when minus button click.

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: FontSizeChangerApp(),debugShowCheckedModeBanner: false));
}

class FontSizeChangerApp extends StatefulWidget {
  const FontSizeChangerApp({super.key});

  @override
  State<FontSizeChangerApp> createState() => _FontSizeChangerAppState();
}

class _FontSizeChangerAppState extends State<FontSizeChangerApp> {
  double _fontSize = 20.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Font Size Changer',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.brown,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Sample Text',
              style: TextStyle(fontSize: _fontSize),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _increaseFontSize,
                  child: Icon(Icons.add),
                ),
                SizedBox(width: 20.0),
                ElevatedButton(
                  onPressed: _decreaseFontSize,
                  child: Icon(Icons.remove),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  void _increaseFontSize() {
    setState(() {
      _fontSize += 2.0;
    });
  }

  void _decreaseFontSize() {
    setState(() {
      _fontSize -= 2.0;
    });
  }

}

