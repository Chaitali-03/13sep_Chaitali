import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project_tops/splashscreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final Future<FirebaseApp> _initailization = Firebase.initializeApp();

    return FutureBuilder(
        future: _initailization,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return MaterialApp(
              theme: ThemeData(
                  fontFamily: AutofillHints.language,
                  backgroundColor: Colors.blueAccent),
              title: "OTP Verification",
              home: SplashScreen(),
              debugShowCheckedModeBanner: false,
            );
          }
          if (snapshot.hasError) {
            print('Something Went Wrong');
          }

          return CircularProgressIndicator();
        });
  }
}
