import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:que_49/firstpage.dart';
import 'package:que_49/secondpage.dart';

void main()
{
  runApp(MaterialApp(home: MyApp(),debugShowCheckedModeBanner: false,));
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(title: Text("Screen Example:", style: TextStyle(color: Colors.white)),
         backgroundColor: Colors.black),
      body: Column(
        children: [
          SizedBox(height: 10),
          Center(
            child: ElevatedButton(onPressed: ()
            {
              Navigator.push(context, MaterialPageRoute(builder: (context) => FirstPage()));
            }, child: Text("First Page")),
          ),
          SizedBox(height: 10),
          Center(
            child: ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage()));
            }, child: Text("second page")),
          )
        ],
      ),
    );
  }
}
