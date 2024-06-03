import 'dart:convert';

import 'package:custom_refresh_indicator/custom_refresh_indicator.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'model.dart';
void main()
{
  runApp(MaterialApp(home: MyApp(),debugShowCheckedModeBanner: false));
}
class MyApp extends StatefulWidget
{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(

        appBar: AppBar(title: Text("Details:"),),
        body: CustomMaterialIndicator(
          onRefresh: _pullRefresh, // Your refresh logic
          indicatorBuilder: (context, controller) {
            return Icon(
              Icons.ac_unit,
              color: Colors.blue,
              size: 30,
            );
          },
          child: FutureBuilder<List>
              (
              future: getdata(),
              builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot)
              {
                if(snapshot.hasData)
                {
                  return Model(list:snapshot.data!!);
                }
                if(snapshot.hasError)
                {
                  print('Network Not Found');
                }
                return CircularProgressIndicator();
              },
            ),
        )
    );
  }

  Future<List> getdata() async
  {
    var resp = await http.get(Uri.parse("https://simplifiedcoding.net/demos/marvel/"));
    return jsonDecode(resp.body);

  }

  Future<void> _pullRefresh()async
  {

    var resp = await http.get(Uri.parse("https://simplifiedcoding.net/demos/marvel/"));
    return jsonDecode(resp.body);

  }
}