import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen:1"),foregroundColor: Colors.white, backgroundColor: Colors.black),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                color: Colors.red, height: 200, width: 400),
            SizedBox(height: 3),
            Container(
              height: 340,
              padding: EdgeInsets.all(3),
              child: GridView.count(
                crossAxisCount: 2,
                children: [
                  Container(
                    color: Colors.blue,
                    margin: EdgeInsets.all(5),
                  ),
                  Container(
                    color: Colors.blue,
                    margin: EdgeInsets.all(5),
                  ),
                  Container(
                    color: Colors.blue,
                    margin: EdgeInsets.all(5),
                  ),
                  Container(
                    color: Colors.blue,
                    margin: EdgeInsets.all(5),
                  ),
                ],
              ),
            ),
            Container(
              height: 250,
              padding: EdgeInsets.all(5),
              child: GridView.count(
                crossAxisCount: 3,
                children: [
                  Container(
                    color: Colors.yellow,
                    margin: EdgeInsets.all(5),
                  ),
                  Container(
                    color: Colors.yellow,
                    margin: EdgeInsets.all(5),
                  ),
                  Container(
                    color: Colors.yellow,
                    margin: EdgeInsets.all(5),
                  ),
                  Container(
                    color: Colors.yellow,
                    margin: EdgeInsets.all(5),
                  ),
                  Container(
                    color: Colors.yellow,
                    margin: EdgeInsets.all(5),
                  ),
                  Container(
                    color: Colors.yellow,
                    margin: EdgeInsets.all(5),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
