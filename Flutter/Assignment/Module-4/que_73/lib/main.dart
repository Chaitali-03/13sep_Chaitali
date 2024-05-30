//73. Write a code to display Splash Screen using Activity.
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'login.dart';

void main()
{
  runApp(MaterialApp(home:SplashScreen(),debugShowCheckedModeBanner: false));
}

class A extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

}

class SplashScreen extends StatefulWidget
{
  @override
  SplashScreenState createState() => SplashScreenState();
}
class SplashScreenState extends State<SplashScreen>
{

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 7),() => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage())));

  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(body: Center(child:Lottie.network("https://chaitalijivani.000webhostapp.com/animations/Animation%20-%20activityprocess.json") ,),);

  }

}
