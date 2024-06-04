import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: MyApp()));
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController num = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Creat Button:"),),
      body: Column(
        children: [
          TextField(
            controller: num,
            decoration: InputDecoration(
                labelText: "Number",
                hintText: "Enter any number out of 1 to 10"),),
          ElevatedButton(onPressed: (){
            check();
          }, child: Text("Click")),
        ],
      ),
    );
  }

  void check() {
    int? n = int.tryParse(num.text.toString());
    for(int i=1;i<=n!;i++)
      {
        print(i);
      }
    }
  }
