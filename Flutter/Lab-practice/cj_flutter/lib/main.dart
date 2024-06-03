import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'second.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget 
{  
  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp
      (
        home: FirstPage(),      
      );
  }
}
class FirstPage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) 
  {
   return Scaffold
     (
     appBar: AppBar(title: Text("First App"),),
     body: Center(
       child: Column(
         children: [
           Text("CHAITALI"),
           ElevatedButton(onPressed: ()
               {
                 Navigator.push(context,MaterialPageRoute(builder: (context) => SecondPage()));
               }, child: Text("Submit"),),
           Image.asset("images/tree_vector123.jpg",width: 150,height: 150),
         ],
       ),
     ),
   );
  }
}
