import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: Number(),debugShowCheckedModeBanner: false,));
}
class Number extends StatefulWidget {
  const Number({super.key});

  @override
  State<Number> createState() => _NumberState();
}

class _NumberState extends State<Number> {
  TextEditingController first = TextEditingController();
  TextEditingController second = TextEditingController();

  get f => first;
  get s => second;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Number game:"),backgroundColor: Colors.brown,),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: first,
              decoration: InputDecoration(
                  labelText: "First",
                  hintText: "Enter First Number",
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(10)
                  )
              ),),
            SizedBox(height: 10),
            TextField(
              controller: second,
              decoration: InputDecoration(
                  labelText: "Second",
                  hintText: "Enter Second Number",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(10)
                  )
              ),),
            SizedBox(height: 10),
            ElevatedButton(onPressed: (){
              String f = first.text.toString();
              String s = second.text.toString();
              between();
            }, child: Text("Click"))
          ],
        ),
      ),

    );
  }

  void between() {
    for(var i=f; i<s; i++)
      {
        Text("$i");
      }
  }
}

