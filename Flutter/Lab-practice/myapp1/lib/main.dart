import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';

void main()
{
  runApp(MaterialApp
    (
    theme: ThemeData(primarySwatch: Colors.purple),
    debugShowCheckedModeBanner: false,
    home:MyApp()
    ,));
}
class MyApp extends StatelessWidget
{
  _makePhoneCall(String phoneNumber)
  {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    launchUrl(launchUri);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Toast Message"),
        actions: [
          IconButton(onPressed: ()
              {
                _makePhoneCall("9512770805");
              }, icon: Icon(Icons.call)),
          IconButton(icon: Icon(Icons.logout),
            onPressed: ()
            {
              Navigator.pop(context);
            },
          ),
          SizedBox(width: 10),
          Icon(Icons.logout,color: Colors.green,)
        ],),
      body: Center(
        child: ElevatedButton(onPressed: ()
          {
            Fluttertoast.showToast(
                msg: "Welcome to Home Page",
                toastLength: Toast.LENGTH_SHORT,
                timeInSecForIosWeb: 2,
                fontSize: 10.00
            );
          },child: Text("Click Me"),),
      ),
    );
  }
}
