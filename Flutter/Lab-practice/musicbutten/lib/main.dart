import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

  late AudioPlayer advancedPlayer;
  bool isswitch = true;
  String textValue = "";

  @override
  void initState() {
    super.initState();
    advancedPlayer = AudioPlayer();
  }

  @override
  void dispose() {
    advancedPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Switch Example"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
          [
            Transform.scale(
              scale: 2,
              child: Switch
                (
                value: isswitch,
                onChanged: (bool value) {
                  toggleSwitch(value);
                },
                activeColor: Colors.blue,
                activeTrackColor: Colors.yellow,
                inactiveThumbColor: Colors.redAccent,
                inactiveTrackColor: Colors.orange,
              ),
            ),
            SizedBox(height: 30),
            Text("$textValue")
          ],
        ),
      ),
    );
  }

  void toggleSwitch(bool value)
  {
      if (isswitch == false) {
        setState(() {
          isswitch = true;
          textValue = 'Switch Button is ON';
          advancedPlayer.play(AssetSource("assets/audio/song2.mp3"));
        });
        print('Switch Button is ON');
      }
      else {
        advancedPlayer.stop();
        setState(() {
          isswitch = false;
          textValue = 'Switch Button is OFF';
        });
        print('Switch Button is OFF');
      }
    }
  }


