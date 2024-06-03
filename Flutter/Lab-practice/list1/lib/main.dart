import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'model.dart';

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
  final List items=[
    Model(image:"assets/images/girl1.jpg",title: "Title 1",subtitle1: "Sub Title 1",subtitle2: "3.00pm"),
    Model(image:"assets/images/boy1.jpg",title: "Title 2",subtitle1: "Sub Title 2",subtitle2: "3.00pm"),
    Model(image:"assets/images/girl1.jpg",title: "Title 3",subtitle1: "Sub Title 3",subtitle2: "3.00pm"),
    Model(image:"assets/images/boy1.jpg",title: "Title 4",subtitle1: "Sub Title 4",subtitle2: "3.00pm"),
    Model(image:"assets/images/girl1.jpg",title: "Title 5",subtitle1: "Sub Title 5",subtitle2: "3.00pm"),
    Model(image:"assets/images/boy1.jpg",title: "Title 6",subtitle1: "Sub Title 6",subtitle2: "3.00pm")
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text("Listview"),backgroundColor: Colors.teal,),
      body: ListView.builder(
          itemBuilder: (BuildContext contex,int index)
        {
          //design
          return ListTile
            (
            leading: CircleAvatar(
              backgroundImage: AssetImage(items[index].image),
              backgroundColor: Colors.deepPurple,
            ),
            title: Text(items[index].title),
            subtitle: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(items[index].subtitle1),
              SizedBox(width: 146),
              Text(items[index].subtitle2),
            ],
          )
          );
        },
        itemCount: items.length,
      ),
    );
  }
}
