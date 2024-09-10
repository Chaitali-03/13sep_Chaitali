import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:project_tops/otp_verify.dart';

import 'login.dart';


class SplashScreen extends StatefulWidget
{
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
{

  @override
  void initState()
  {
    // TODO: implement initState
    super.initState();

    Timer
      (
        Duration(seconds: 4), () =>
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()))
    );
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold
      (
      body: Center
        (
          child: Lottie.network
            (
              "https://chaitalijivani.000webhostapp.com/animations/Animation%20-%20activityprocess.json",
              width: 250,
              height: 250
          )

      ),
    ) ;
  }
}