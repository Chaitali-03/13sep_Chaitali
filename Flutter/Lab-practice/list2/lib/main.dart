import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'model.dart';

void main()
{
  runApp(MaterialApp(home: MyApp(),debugShowCheckedModeBanner: false));
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List items=[
    Model(title:"Name",subtitle1:"Designation",subtitle2:"Date:Ja-20-2020",subtitle3:"90 days ago",image: "assets/images/girl.png",icon: 'Icons.navigate_next'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("listview"),backgroundColor: Colors.black,),
      body: ListView.separated(
          itemBuilder: (BuildContext context,int index)
          {
            return Card(
              color: Colors.orange,
              child: ListTile(
                title: Text(items[index].title),
                subtitle: Column(
                  children: [
                    Row(
                      children: [
                        Text(items[index].subtitle1),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text(items[index].subtitle2),
                        SizedBox(width: 30),
                        Text(items[index].subtitle3),
                      ],
                    ),
                  ],
                ),
                trailing:Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(items[index].image),
                    ),
                    Icon(items[index].icon)
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context,int index)
          {
            return ListTile();
          }, itemCount: items.length),
    );
  }
}
